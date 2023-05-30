class Exercise < ApplicationRecord
  belongs_to :trainee, class_name: "User"
  belongs_to :trainer, class_name: "User"
  belongs_to :movement
  belongs_to :weight_category
  belongs_to :split
  belongs_to :routine
  
 
  has_many :exercise_targets
  has_many :targets, through: :exercise_targets

  validates :movement_id, :weight_category_id, :split_id, :reps, :weight, :trainee,  presence: true
end
