FactoryBot.define do
  factory :user do
    name                     {"Fake data"}
    nickname                 { Faker::JapaneseMedia::OnePiece.character }
    sequence(:email)         { Faker::Internet.email }
    password                 {"123456"}
    password_confirmation    {"123456"}
    prefecture_id            { Faker::Number.between(from: 1, to: 47) }
    city                     {"中央区"}
    building_street          {"難波5丁目1−60 なんばスカイオ15階"}
    age                      { Faker::Number.between(from: 20, to: 100) }
    gender                   {"男性"}
  end

end
