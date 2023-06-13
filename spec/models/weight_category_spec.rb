require 'rails_helper'

RSpec.describe WeightCategory, type: :model do
  
  describe " WeightCategory" do
    it "returns a new weight category instance (non-persistent)" do
      weight_category = build(:weight_category)
      expect(weight_category).to be_valid
    end
  end

  describe "Validations" do 
    it {should have_many(:exercises)}
  end
end
