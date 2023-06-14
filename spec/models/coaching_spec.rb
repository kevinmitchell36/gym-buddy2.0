require 'rails_helper'

RSpec.describe Coaching, type: :model do

  describe "Coaching" do
    it "returns a new coaching instance (non-persistent)" do
      user1 = create(:user)
      user2 = create(:user)
      coaching = build(:coaching, trainer_id: user1.id, trainee_id: user2.id)
      expect(coaching).to be_valid
    end
  end

  describe "Associations" do
    it {should belong_to(:trainer)}
    it {should belong_to(:trainee)}
  end

end
