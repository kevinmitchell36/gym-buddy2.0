require 'rails_helper'

RSpec.describe ExerciseTarget, type: :model do
  
  describe "Exercise_target" do
    it "returns a new exercise_target instance (non-persistent)" do
      movement = create(:movement)
      weight_category = create(:weight_category)
      routine = create(:routine)
      exercise = create(:exercise,
        movement_id: movement.id,
        weight_category_id: weight_category.id,
        routine_id: routine.id
      )
      target = create(:target)
      exercise_target = build(:exercise_target, target_id: target.id, exercise_id: exercise.id)
      expect(exercise_target).to be_valid
    end
  end

  describe "Associations" do
    it { should belong_to(:target)}
    it { should belong_to(:exercise)}
  end
  puts "making so changes for testing purposes"
end
