class CreateExerciseSplits < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_splits do |t|
      t.integer :split_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
