require 'rails_helper'

RSpec.describe Target, type: :model do
  
  describe "Target" do
    it "returns a new target instance (non-persistent)" do
      target = build(:target)
      expect(target).to be_valid
    end
  end

  describe "Associations" do
    it {should have_many(:exercise_targets)}
    it {should have_many(:exercises).through(:exercise_targets)}
  end
end
