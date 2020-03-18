FactoryBot.define do
  factory :request do
    date           { Faker::Date.forward(days: 23) }
    time           {"12:00 ~ 23:00"}
    name           {"nara"}
    gender         {"女児"}
    age            { Faker::Number.between(from: 1, to: 10) }
    allergy        {"牛乳"}
    personality    {"活発"}
    mention        {"特になし"}
    reply          {"選択してください"}
  end
end