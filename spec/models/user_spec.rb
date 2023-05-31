require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "#user" do
    it "returns a new user instance (non-persistent)" do
      user = build(:user)
      expect(user).to be_valid
    end
  end

  describe "#associations" do
    it {should have_many(:exercises)}
    it {should have_many(:training_teachers)}
    it {should have_many(:trainers).through(:training_teachers)}
    it {should have_many(:training_students)}
    it {should have_many(:trainees).through(:training_students)}
  end
  
  describe "#validations" do
    
    it "is not valid without a name" do
      user = build(:user)
      user.first_name = nil
      expect(user).to_not be_valid
    end
    
    it "is not valid without an email" do
      user = build(:user)
      user.email = nil
      expect(user).to_not be_valid
    end

    # Add uniqueness check here
    
    it "is not valid without a password" do
      user = build(:user)
      user.password_digest = nil
      expect(user).to_not be_valid
    end
  end

end
