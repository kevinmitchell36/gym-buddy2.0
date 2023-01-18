class Exercise < ApplicationRecord
  belongs_to :trainee, class_name: "User"
  # belongs_to :routine
  # has_many :targets
  # has_many :targets, through: :exercise_targets

  validates :movement_id, :weight_category_id, :split_id, :reps, :weight, :trainee,  presence: true
end
