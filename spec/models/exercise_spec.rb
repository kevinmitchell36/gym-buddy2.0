require 'rails_helper'

RSpec.describe Exercise, type: :model do



  describe "Exercise" do
    it "returns a new user instance (non-persistent)" do
      movement = create(:movement)
      weight_category = create(:weight_category)
      routine = create(:routine)
      exercise = build(:exercise,
        movement_id: movement.id,
        weight_category_id: weight_category.id,
        routine_id: routine.id
      )
      expect(exercise).to be_valid
    end
  end

  describe "Associations" do
    it {should belong_to(:user)}
    it {should belong_to(:routine)}
    it {should have_many(:exercise_targets)}
    it {should have_many(:targets).through(:exercise_targets)}
    it {should have_many(:exercise_splits)}
    it {should have_many(:splits).through(:exercise_splits)}
  end

end
