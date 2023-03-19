FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    last_name             {'太郎'}
    family_name           {'山田'}
    last_name_kana        {'タロウ'}
    family_name_kana      {'ヤマダ'}
    birth_date            {'2000/01/01'}
  end
end