class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.references :lead, index: true, foreign_key: true
      t.datetime :occurred_at
      t.text :notes

      t.timestamps null: false
    end
  end
end
