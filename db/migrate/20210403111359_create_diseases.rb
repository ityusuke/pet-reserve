class CreateDiseases < ActiveRecord::Migration[6.1]
  def change
    create_table :diseases do |t|
      t.string     :disease_name
      t.references :reservation, foreign_key: true
      t.timestamps
    end
  end
end
