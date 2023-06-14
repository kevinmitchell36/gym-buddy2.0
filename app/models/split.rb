class Split < ApplicationRecord
  has_many :exercise_splits
  has_many :exercises, through: :exercise_splits
end
