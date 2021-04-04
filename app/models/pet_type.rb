class PetType < ApplicationRecord
  belongs_to :reservation
end

# == Schema Information
#
# Table name: pet_types
#
#  id             :bigint           not null, primary key
#  type_name      :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  reservation_id :bigint
#
# Indexes
#
#  index_pet_types_on_reservation_id  (reservation_id)
#
# Foreign Keys
#
#  fk_rails_...  (reservation_id => reservations.id)
#
