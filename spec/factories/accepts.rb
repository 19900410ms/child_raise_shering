FactoryBot.define do

  factory :accept do
    date        {"2020-01-01"}
    time        {"12:00 ~ 23:00"}
    capacity    {"2"}
    age_range   {"0 ~ 10"}
    beg         {"特になし"}
    hide        {""}
  end
end