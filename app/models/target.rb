class Target < ApplicationRecord
  has_many :exercise_targets
  has_many :exercises, through: :exercise_targets
end
