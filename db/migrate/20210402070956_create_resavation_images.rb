class CreateResavationImages < ActiveRecord::Migration[6.1]
  def change
    create_table :resavation_images do |t|
      t.string     :src,   null:false
      t.references :reservation,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
