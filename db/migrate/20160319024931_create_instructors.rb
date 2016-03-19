class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.date :hired_on

      t.timestamps null: false
    end
  end
end
