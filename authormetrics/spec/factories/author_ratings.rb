FactoryBot.define do
    factory :author_rating do
      author_id { Faker::Alphanumeric.alphanumeric(number: 12) }
      author_rating_id { Faker::Number.number }
      user_id { Faker::Number.number }
      rating { Faker::Number.number }
    end
    
  end