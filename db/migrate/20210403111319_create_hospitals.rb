class CreateHospitals < ActiveRecord::Migration[6.1]
  def change
    create_table :hospitals do |t|
      t.string     :hospital_name
      t.references :reservation, foreign_key: true
      t.timestamps
    end
  end
end
