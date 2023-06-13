require 'rails_helper'

RSpec.describe Movement, type: :model do
  
  describe "Movement" do
    it "returns a new movement instance (non-persistent)" do
      movement = build(:movement)
      expect(movement).to be_valid
    end
  end
  
  describe "Associations" do
    it {should have_many(:exercises)}
  end
  
end
