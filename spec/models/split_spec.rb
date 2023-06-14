require 'rails_helper'

RSpec.describe Split, type: :model do
  
  
  describe "Split" do
    it "returns a new split instance (non-persistent)" do
      split = build(:split)
      expect(split).to be_valid
    end
  end

  describe "Associations" do 
    it {should have_many(:exercise_splits)}
    it {should have_many(:exercises).through(:exercise_splits)}
  end
  
end
