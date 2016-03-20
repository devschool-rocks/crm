class CreateEnrollmentInvites < ActiveRecord::Migration
  def change
    create_table :enrollment_invites do |t|
      t.references :lead, index: true, foreign_key: true
      t.integer :price

      t.timestamps null: false
    end
  end
end
