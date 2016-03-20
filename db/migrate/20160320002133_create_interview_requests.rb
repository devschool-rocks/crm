class CreateInterviewRequests < ActiveRecord::Migration
  def change
    create_table :interview_requests do |t|
      t.references :lead, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
