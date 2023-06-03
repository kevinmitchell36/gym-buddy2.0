class Routine < ApplicationRecord
  has_many :exercises
  belongs_to :user, foreign_key: :trainee_id 
end
