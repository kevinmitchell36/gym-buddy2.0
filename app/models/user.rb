class User < ApplicationRecord
  has_many :coachings

  has_many :training_teachers, foreign_key: :trainee_id, class_name: "Coaching"
  has_many :trainers, through: :training_teachers, source: :trainer

  has_many :training_students, foreign_key: :trainer_id, class_name: "Coaching"
  has_many :trainees, through: :training_students, source: :trainee
  # validates :name, :email, :password_digest, presence: true
end
