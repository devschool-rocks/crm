class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :brand
      t.string :style
      t.string :color
      t.string :qty
      t.references :size, index: true, foreign_key: true
      t.references :gender, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
