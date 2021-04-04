class ChangeIdColumnTypeToInteger < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :disease_id, :string
    remove_column :reservations, :hospital_id, :string
    remove_column :reservations, :reg_user_id, :string
    remove_column :reservations, :update_user_id, :string
    add_column :reservations, :disease_id, :integer
    add_column :reservations, :hospital_id, :integer
    add_column :reservations, :reg_user_id, :integer
    add_column :reservations, :update_user_id, :integer
  end
end
