class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :slack_name
      t.string :email
      t.date :birthday
      t.date :enrolled_on
      t.references :instructor, index: true, foreign_key: true
      t.references :size, index: true, foreign_key: true
      t.references :gender, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
