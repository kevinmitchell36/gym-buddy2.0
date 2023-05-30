require 'rails_helper'

RSpec.describe Exercise, type: :model do

  describe "#associations" do
    it {should belong_to(:trainee)}
    it {should belong_to(:routine)}
    it {should have_many(:exercise_targets)}
    it {should have_many(:targets).through(:exercise_targets)}
  end

  describe "#exercise" do
    it "returns a new exercise instance (non-persistent)" do
      exercise = build(:exercise)
      expect(exercise).to be_valid
    end
  end



  # user = User.create(
  #   name: "Kevin",
  #   email: "kevin@example.com",
  #   password_digest: "lajsdljaskdjlasjkdj"
  # )
  # p user

  # subject = Exercise.create(
  #   movement_id: 2,
  #   weight_category_id: 2, 
  #   split_id: 2,
  #   reps: 10,
  #   weight: 30,
  #   trainee_id: user.id
  # )
  # p subject

  # describe "Validations" do
  #   it "is valid with valid attributes" do
  #     expect(subject).to be_valid
  #   end

  #   it "is not valid without movement_id" do
  #     subject.movement_id = nil
  #     expect(subject).to_not be_valid
  #   end

  #   it "is not valid without weight_category_id" do
  #     subject.weight_category_id = nil
  #     expect(subject).to_not be_valid
  #   end

  #   it "is not valid without split_id" do
  #     subject.split_id = nil
  #     expect(subject).to_not be_valid
  #   end

  #   it "is not valid without reps" do
  #     subject.reps = nil
  #     expect(subject).to_not be_valid
  #   end

  #   it "is not valid without weight" do
  #     subject.weight = nil
  #     expect(subject).to_not be_valid
  #   end
  # end

  
end
