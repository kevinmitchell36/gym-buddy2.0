class Exercise < ApplicationRecord
  belongs_to :user, foreign_key: :trainee_id
  belongs_to :user, foreign_key: :trainer_id
  belongs_to :movement
  belongs_to :weight_category
  belongs_to :routine
  
  
 
  has_many :exercise_targets
  has_many :targets, through: :exercise_targets
  has_many :exercise_splits
  has_many :splits, through: :exercise_splits

  validates :movement_id, presence: true 
  validates :weight_category_id, presence: true
  validates :split_id, presence: true
  validates :reps, presence: true
  validates :weight, presence: true
  validates :trainee_id, presence: true
  validates :trainer_id, presence: true  
end
