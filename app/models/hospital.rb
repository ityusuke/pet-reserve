class Hospital < ApplicationRecord
  belongs_to :reservation
end

# == Schema Information
#
# Table name: hospitals
#
#  id             :bigint           not null, primary key
#  hospital_name  :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  reservation_id :bigint
#
# Indexes
#
#  index_hospitals_on_reservation_id  (reservation_id)
#
# Foreign Keys
#
#  fk_rails_...  (reservation_id => reservations.id)
#
