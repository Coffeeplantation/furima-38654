FactoryBot.define do

  before do
    #①ユーザー = Factorybotを用いてデータを生成（DBに保存）
    user = FactoryBot.create(:user)
    #②商品 = Factorybotを用いてデータを生成（DBに保存）
    furima = FactoryBot.create(:user)
    #③@フォームオブジェクト = FactoryBot.build(:フォームオブジェクト, ユーザー_id: ユーザー.id , 商品_id: 商品.id)
    order_address = FactoryBot.build(:order_address, user_id: user.id ,furima_id: furima.id)
    end

  factory :order_address do
    #user_id { Faker::Number.non_zero_digit }
    #furima_id { Faker::Number.non_zero_digit }
    post_code { Faker::Number.decimal_part(digits: 3) + '-' + Faker::Number.decimal_part(digits: 4) }
    prefecture_id { Faker::Number.between(from: 1, to: 47) }
    city { Faker::Address.city }
    address { Faker::Address.street_address }
    building_name { Faker::Address.street_address }
    phone_number { Faker::Number.decimal_part(digits: 11) }
    token { Faker::Internet.password(min_length: 20, max_length: 30) }
  end
end