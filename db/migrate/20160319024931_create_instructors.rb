class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :slack_name
      t.date :hired_on

      t.timestamps null: false
    end
  end
end
