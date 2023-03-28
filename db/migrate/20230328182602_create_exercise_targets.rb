class CreateExerciseTargets < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_targets do |t|
      t.integer :exercise_id
      t.integer :target_id

      t.timestamps
    end
  end
end
