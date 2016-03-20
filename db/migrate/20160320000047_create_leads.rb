class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email
      t.string :source
      t.datetime :last_contacted_at

      t.timestamps null: false
    end
  end
end
