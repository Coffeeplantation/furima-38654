FactoryBot.define do

  before do
    user = FactoryBot.create(:user)
    furima = FactoryBot.create(:user)
    order_address = FactoryBot.build(:order_address, user_id: user.id ,furima_id: furima.id)
    end

  factory :order_address do
    post_code { Faker::Number.decimal_part(digits: 3) + '-' + Faker::Number.decimal_part(digits: 4) }
    prefecture_id { Faker::Number.between(from: 1, to: 47) }
    city { Faker::Address.city }
    address { Faker::Address.street_address }
    building_name { Faker::Address.street_address }
    phone_number { Faker::Number.decimal_part(digits: 11) }
    token { Faker::Internet.password(min_length: 20, max_length: 30) }
  end
end