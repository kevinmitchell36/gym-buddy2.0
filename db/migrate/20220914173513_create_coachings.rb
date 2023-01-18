class CreateCoachings < ActiveRecord::Migration[7.0]
  def change
    create_table :coachings do |t|
      t.integer :trainer_id
      t.integer :trainee_id

      t.timestamps
    end
  end
end
