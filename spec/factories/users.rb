fnames = ["Alice", "Maddie", "Jeremy", "Sean", "Joey"]
lnames = ["Matos", "Hartwig", "Ethier", "Nalewanyj", "Swol" ]

FactoryBot.define do
  factory :user do
    first_name { fnames.sample }
    last_name { lnames.sample}
    sequence :email do |n| 
      "#{first_name}#{n}@example.com" 
    end
    password_digest { "randstring123" }
  end
end
