FactoryBot.define do
  factory :furima do
    item {Faker::Lorem.sentence}
    item_text {Faker::Lorem.sentence}
    association :user 
    category_id              {2}
    condition_id             {2}
    scheduled_delivery_id    {2}
    fee_id                   {2}
    prefecture_id            {2}
    price                    {5000}

    after(:build) do |furima|
      furima.image.attach(io: File.open('app/assets/images/star.png'), filename: 'star.png')

  end
end
end