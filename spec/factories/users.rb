FactoryBot.define do

  factory :user do
    name                     {"test"}
    nickname                 {"sample"}
    sequence(:email)         { Faker::Internet.email }
    password                 {"123456"}
    password_confirmation    {"123456"}
    region                   {"大阪府中央区"}
    address                  {"難波5丁目1−60 なんばスカイオ15階"}
    age                      {"52"}
    gender                   {"男性"}
  end

end
