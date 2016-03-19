class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :label
      t.references :addressee, polymorphic: true, index: true
      t.date :sent_on

      t.timestamps null: false
    end
  end
end
