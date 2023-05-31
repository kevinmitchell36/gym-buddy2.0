require 'rails_helper'

RSpec.describe Exercise, type: :model do

  describe " #exercise validations" do
    it "returns a new exercise instance (non-persistent)" do
      movement = create(:movement)
      weight_category = create(:weight_category)
      split = create(:split)
      trainee = create(:user)
      trainer = create(:user)
      routine = create(:routine)
      exercise = build(:exercise, 
        movement_id: movement.id, 
        weight_category_id: weight_category.id,
        split_id: split.id,
        trainer_id: trainer.id,
        trainee_id: trainee.id,
        routine_id: routine.id
      )
      expect(exercise).to be_valid
    end
  end

  describe " #associations" do
    it {should belong_to(:trainee)}
    it {should belong_to(:routine)}
    it {should have_many(:exercise_targets)}
    it {should have_many(:targets).through(:exercise_targets)}
  end

end
