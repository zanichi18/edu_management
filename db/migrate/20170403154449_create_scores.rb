class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :study_times
      t.float :avg_end_semester_score
      t.float :avg_mid_semester_score
      t.float :avg_exercise_score
      t.float :avg_score
      t.float :gpa_score
      t.references :class_subject, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
