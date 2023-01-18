require 'rails_helper'

RSpec.describe Exercise, type: :model do
  user = User.create(
    name: "Kevin",
    email: "kevin@example.com",
    password_digest: "lajsdljaskdjlasjkdj"
  )
  p user
  subject {
    described_class.new(
      movement_id: 1,  
      weight_category_id: 1,
      split_id: 1, 
      reps: 8, 
      weight: 30,
      trainee_id: 1
    )
  }

  exercise = Exercise.create(
    movement_id: 2,
    weight_category_id: 2, 
    split_id: 2,
    reps: 10,
    weight: 30,
    trainee_id: user.id
  )
  p exercise

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without movement_id" do
      subject.movement_id = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without weight_category_id" do
      subject.weight_category_id = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without split_id" do
      subject.split_id = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without reps" do
      subject.reps = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without weight" do
      subject.weight = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it {should belong_to(:trainee)}
  end
end
