class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :item, polymorphic: true, index: true
      t.references :shipment, index: true, foreign_key: true
      t.integer :qty

      t.timestamps null: false
    end
  end
end
