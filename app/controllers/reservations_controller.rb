class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    logger.debug(@reservations)
  end
  def new
    @reservation = Reservation.new
  end
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
    redirect_to reservations_path
  end

  def reservation_params 
    params.require(:reservation).permit(:pet_name,:comment)
  end

  def show
    @reservation = Reservation.find(params[:id])
    logger.debug(@reservation)
  end
end
