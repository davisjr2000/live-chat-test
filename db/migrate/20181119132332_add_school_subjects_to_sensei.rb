class AddSchoolSubjectsToSensei < ActiveRecord::Migration[5.2]
  def change
    add_reference :senseis, :school_subject, foreign_key: true
  end
end
