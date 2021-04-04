class CreatePetTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :pet_types do |t|
      t.string     :type_name
      t.references :reservation, foreign_key: true
      t.timestamps
    end
  end
end
