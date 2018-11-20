class AddDurationToLessonRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :lesson_requests, :duration, :integer
  end
end
