FactoryBot.define do
  factory :exercise do
    movement_id { 1 }
    weight_category_id { 1 }
    split_id { 1 }
    reps { 10 }
    weight { 10 }
    notes { "pick up and put down"}
    trainee_id { 1 }
    trainer_id { 2 }
    routine_id { 1 }
  end
end