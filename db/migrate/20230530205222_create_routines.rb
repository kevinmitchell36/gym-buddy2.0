class CreateRoutines < ActiveRecord::Migration[7.0]
  def change
    create_table :routines do |t|
      t.integer :trainee_id

      t.timestamps
    end
  end
end
