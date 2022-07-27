json.extract! author, :id, :author_id, :name, :surname, :affiliations, :interests, :created_at, :updated_at
json.url author_url(author, format: :json)
