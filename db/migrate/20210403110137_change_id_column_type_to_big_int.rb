class ChangeIdColumnTypeToBigInt < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :type_id, :integer
    remove_column :reservations, :typeId, :string
    remove_column :reservations, :disease_id, :integer
    remove_column :reservations, :hospital_id, :integer
    remove_column :reservations, :reg_user_id, :integer
    remove_column :reservations, :update_user_id, :integer
    add_column :reservations, :type_id, :bigint
    add_column :reservations, :disease_id, :bigint
    add_column :reservations, :hospital_id, :bigint
    add_column :reservations, :reg_user_id, :bigint
    add_column :reservations, :update_user_id, :bigint
  end
end
