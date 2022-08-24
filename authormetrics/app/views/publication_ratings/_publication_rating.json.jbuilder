json.extract! publication_rating,  :publication_id, :user_id, :rating, :rating_timestamp
json.url publication_publication_rating_url(publication_rating, format: :json)
