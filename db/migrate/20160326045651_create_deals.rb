class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.references :lead, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.decimal :price
      t.date :offered_on
      t.date :closed_on

      t.timestamps null: false
    end
  end
end
