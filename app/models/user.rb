class User < ApplicationRecord
  has_many :exercises, foreign_key: :trainee_id
  has_many :coachings
  validates_associated :coachings

  has_many :training_teachers, foreign_key: :trainee_id, class_name: "Coaching"
  has_many :trainers, through: :training_teachers, source: :trainer

  has_many :training_students, foreign_key: :trainer_id, class_name: "Coaching"
  has_many :trainees, through: :training_students, source: :trainee

  validates :first_name, presence: true
  validates :last_name, presence: true 
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
