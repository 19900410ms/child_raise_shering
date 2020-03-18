puts 'Start inserting seed "users" ...'
10.times do
  user = User.create(
    name:                   Faker::Name.unique.name,
    nickname:               Faker::JapaneseMedia::OnePiece.character,
    email:                  Faker::Internet.unique.email,
    password:              'password',
    password_confirmation: 'password',
    prefecture_id:          Faker::Number.between(from: 1, to: 47),
    city:                  '中央区',
    building_street:       '難波5丁目1−60 なんばスカイオ15',
    age:                    Faker::Number.between(from: 20, to: 100),
    gender:                 Faker::Gender.binary_type
  )
  puts "\"#{user.name}\" has created!"
end
