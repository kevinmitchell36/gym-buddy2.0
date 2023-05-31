require 'rails_helper'

RSpec.describe ExerciseTarget, type: :model do
  
  describe " #associations" do
    it { should belong_to(:target)}
  end
end
