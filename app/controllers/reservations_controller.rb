class ReservationsController < ApplicationController
  def index
    @reservations = Hospital.instance.hospitals
    logger.debug(@reservations)
  end
  def new
    @reservation = Reservation.new
    @reservation_files = @reservation.reservation_images.build
  end
  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      # 画像が投稿されていないパターンもあるので条件分岐
      if params[:reservation_images].present?
        # フォームで入力されたファイルを一つずつレコードに格納していく
        params[:reservation_images][:src].each do |file|
          @reservation_file = @reservation.reservation_images.new(src: file, reservation_id: @reservation.id)
          @reservation_file.save
        end
      end
      redirect_to reservation_path(@reservation)
    # 投稿が失敗した場合
    else
      @reservations = Reservation.all
      redirect_to reservations_path
    end
  end
 
  def show
    @reservation = Reservation.find(params[:id])
    @reservation_files = ReservationImage.where(reservation_id: @reservation.id)
  end

  def reservation_params 
    params.require(:reservation).permit(:pet_name,:comment,:hospital_id,:disease_id,:start_date,:end_date,reservation_images_attributes:[:src,:_destroy,:id])
  end
end
