require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(
      name: "Kevin",
      email: "kevin@example.com",
      password_digest: "lajsdljaskdjlasjkdj"
    )
  }

  coaching = Coaching.create!(trainer_id: 1, trainee_id: 2)
  p coaching
  
  
  it "is valid with valid attributes" do    
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a password" do
    subject.password_digest = nil
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it {should have_many(:training_teachers)}
    it {should have_many(:trainers).through(:training_teachers)}
    it {should have_many(:training_students)}
    it {should have_many(:trainees).through(:training_students)}
  end
end
