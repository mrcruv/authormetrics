json.extract! author_rating, :id, :rating, :author_id, :user_id, :created_at, :updated_at
json.url author_rating_url(author_rating, format: :json)
