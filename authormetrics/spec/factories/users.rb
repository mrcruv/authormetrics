FactoryBot.define do
    factory :user do
        user_id { Faker::Number.positive }
        name { Faker::Alphanumeric.alphanumeric }
        username { Faker::Alphanumeric.alphanumeric }
        surname { Faker::Alphanumeric.alphanumeric }
        birth_date {Faker::Date.birthday}
        email { Faker::Internet.email }
        encrypted_password {Faker::Alphanumeric.alphanumeric }
    end
end