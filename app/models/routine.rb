class Routine < ApplicationRecord
  has_many :exercises
  belongs_to :trainee, class_name: "User" 
end
