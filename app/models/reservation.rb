# == Schema Information
#
# Table name: reservations
#
#  id             :bigint           not null, primary key
#  comment        :string(255)
#  delete_flg     :string(255)
#  end_date       :datetime
#  pet_name       :string(255)
#  reg_date       :datetime
#  start_date     :datetime
#  update_date    :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  disease_id     :bigint
#  hospital_id    :bigint
#  reg_user_id    :bigint
#  type_id        :bigint
#  update_user_id :bigint
#
class Reservation < ApplicationRecord
  has_many :reservation_images, dependent: :destroy
  accepts_nested_attributes_for :reservation_images, 
  allow_destroy: true
  has_one :pet_type
  has_one :hospital
  has_one :disease
end
