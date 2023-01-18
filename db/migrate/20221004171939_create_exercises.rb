class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.integer :movement_id
      t.integer :weight_category_id
      t.integer :split_id
      t.integer :reps
      t.integer :weight
      t.text :notes
      t.integer :trainee_id
      t.integer :trainer_id
      t.integer :routine_id

      t.timestamps
    end
  end
end
