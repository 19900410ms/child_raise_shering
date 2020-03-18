FactoryBot.define do
  factory :accept do
    date        { Faker::Date.forward(days: 23) }
    time        {"12:00 ~ 23:00"}
    capacity    { Faker::Number.between(from: 1, to: 10) }
    age_range   {"0 ~ 10"}
    beg         {"特になし"}
    hide        {""}
  end
end