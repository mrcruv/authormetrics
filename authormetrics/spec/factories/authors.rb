FactoryBot.define do
    factory :author do
        author_id { Faker::Alphanumeric.alphanumeric(number: 12) }
        name {Faker::Alphanumeric.alphanumeric }
        affiliations {Faker::Alphanumeric.alphanumeric }
        interests {Faker::Alphanumeric.alphanumeric }
    end
end