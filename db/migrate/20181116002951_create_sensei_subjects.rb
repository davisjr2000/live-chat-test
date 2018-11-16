class CreateSenseiSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :sensei_subjects do |t|
      t.references :sensei, foreign_key: true
      t.references :subject, foreign_key: true
      t.float :price_per_hour

      t.timestamps
    end
  end
end
