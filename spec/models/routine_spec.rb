require 'rails_helper'

RSpec.describe Routine, type: :model do
  
  describe "Routine" do
    it "returns a new user instance (non-persistent)" do
      routine = build(:routine)
      expect(routine).to be_valid
    end
  end

  describe "Associations" do
    it { should have_many(:exercises) }
    it { should belong_to(:user) }
  end
end
