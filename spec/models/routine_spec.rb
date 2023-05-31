require 'rails_helper'

RSpec.describe Routine, type: :model do
  
  describe " #associations" do
    it { should have_many(:exercises) }
    it { should belong_to(:trainee) }
  end
end
