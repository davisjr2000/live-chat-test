class CreateLessonRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_requests do |t|
      t.references :sensei, foreign_key: true
      t.references :user, foreign_key: true
      t.references :subject, foreign_key: true
      t.text :description
      t.boolean :sensei_accepted
      t.text :denial_reason
      t.date :lesson_date
      t.integer :time
      t.float :amount
      t.string :payment_state
      t.jsonb :payment

      t.timestamps
    end
  end
end
