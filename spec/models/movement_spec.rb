require 'rails_helper'

RSpec.describe Movement, type: :model do
  
  
  describe " #associations" do
    it {should have_many(:exercises)}
  end
  
end
