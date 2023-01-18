require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(
      name: "Kevin",
      email: "kevin@example.com",
      password_digest: "lajsdljaskdjlasjkdj"
    )
  }
  
  it "is valid with valid attributes" do    
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a password" do
    subject.password_digest = nil
    expect(subject).to_not be_valid
  end
end
