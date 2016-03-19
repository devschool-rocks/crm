class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :brand
      t.string :style
      t.string :color
      t.string :size
      t.string :qty
      t.references :gender, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
