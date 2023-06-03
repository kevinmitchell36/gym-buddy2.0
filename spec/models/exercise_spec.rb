require 'rails_helper'

RSpec.describe Exercise, type: :model do

  user_1 = User.create(first_name: "Test", last_name: "McTesterson", email: "testerson@test.com", password_digest: "password")
  user_2 = User.create(first_name: "Example", last_name: "McExampleson", email: "example@example.com", password_digest: "password")

  movement = Movement.create(name: "pec fly")
  weight_category = WeightCategory.create(name: "Machine Weight")
  split = Split.create(name: "Upper")
  routine = Routine.create(trainee_id: user_1.id)


  describe " #exercise validations" do
    it "returns a new exercise instance (non-persistent)" do
      exercise = Exercise.create(
        movement_id: movement.id,
        weight_category_id: weight_category.id,
        split_id: split.id,
        reps: 10,
        weight: 15,
        notes: "Bring elbows together",
        trainee_id: user_1.id,
        trainer_id: user_2.id,
        routine_id: routine.id
      )
      expect(exercise).to be_valid
    end
  end

  describe " #associations" do
    it {should belong_to(:user)}
    it {should belong_to(:routine)}
    it {should have_many(:exercise_targets)}
    it {should have_many(:targets).through(:exercise_targets)}
  end

end
