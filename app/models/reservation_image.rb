# == Schema Information
#
# Table name: reservation_images
#
#  id             :bigint           not null, primary key
#  src            :string(255)      not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  reservation_id :bigint           not null
#
# Indexes
#
#  index_reservation_images_on_reservation_id  (reservation_id)
#
# Foreign Keys
#
#  fk_rails_...  (reservation_id => reservations.id)
#
class ReservationImage < ApplicationRecord
  belongs_to :reservation
  mount_uploader :src, ReservationImageUploader
  validates :src, presence: true

end
