require 'rails_helper'

RSpec.describe Target, type: :model do
  
  describe " #associations" do
    it {should have_many(:exercise_targets)}
    it {should have_many(:exercises).through(:exercise_targets)}
  end
end
