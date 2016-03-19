class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :birthday
      t.date :enrolled_on
      t.references :instructor, index: true, foreign_key: true
      t.string :shirt_size

      t.timestamps null: false
    end
  end
end
