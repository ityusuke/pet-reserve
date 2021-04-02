class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :pet_id
      t.string :disease_id
      t.string :hospital_id
      t.string :pet_name
      t.datetime :start_date
      t.datetime :end_date
      t.string :comment
      t.string :delete_flg
      t.datetime :reg_date
      t.datetime :reg_user_id
      t.datetime :update_date
      t.datetime :update_user_id
      t.timestamps
    end
  end
end
