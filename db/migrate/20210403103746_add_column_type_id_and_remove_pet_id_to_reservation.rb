class AddColumnTypeIdAndRemovePetIdToReservation < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :type_id, :integer
    remove_column :reservations, :pet_id, :integer
  end
end
