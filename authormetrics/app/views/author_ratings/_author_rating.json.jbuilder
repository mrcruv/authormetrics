json.extract! author_rating, :id, :author_id, :user_id, :rating, :rating_timestamp, :created_at, :updated_at
json.url author_rating_url(author_rating, format: :json)
