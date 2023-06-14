require 'rails_helper'

RSpec.describe ExerciseSplit, type: :model do

  describe "Exercise_split" do
    it "returns a new user instance (non-persistent)" do
      movement = create(:movement)
      weight_category = create(:weight_category)
      routine = create(:routine)
      split = create(:split)
      exercise = create(:exercise, 
        movement_id: movement.id, 
        weight_category_id: weight_category.id, 
        routine_id: routine.id
      )
      exercise_split = build(:exercise_split, split_id: split.id, exercise_id: exercise.id)
      expect(exercise_split).to be_valid
    end
  end

  it {should belong_to(:split)}
  it {should belong_to(:exercise)}
end
