class Coaching < ApplicationRecord

  # validates :trainer_id, :trainee_id, presence: true

  belongs_to :trainer, foreign_key: :trainer_id, class_name: "User"

  belongs_to :trainee, foreign_key: :trainee_id, class_name: "User"
end
