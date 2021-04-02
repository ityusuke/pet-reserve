class Reservation < ApplicationRecord
  has_many :reservation_images, dependent: :destroy
  accepts_nested_attributes_for :reservation_images, 
  allow_destroy: true
end
