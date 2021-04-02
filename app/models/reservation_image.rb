class ReservationImage < ApplicationRecord
  belongs_to :reservation
  mount_uploader :src, ReservationImageUploader
  validates :src, presence: true

end
