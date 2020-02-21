FactoryBot.define do
  factory :request do
    date           {"2020-01-01"}
    time           {"12:00 ~ 23:00"}
    name           {"nara"}
    gender         {"女児"}
    age            {"7"}
    allergy        {"牛乳"}
    personality    {"活発"}
    mention        {"特になし"}
    reply          {"選択してください"}
    user_id        {"1"}
    accept_id      {"4"}
  end
end