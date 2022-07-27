json.extract! publication_rating, :id, :publication_id, :user_id, :rating, :rating_timestamp, :created_at, :updated_at
json.url publication_rating_url(publication_rating, format: :json)
