json.extract! favorite_publication, :id, :publication_id, :user_id, :created_at, :updated_at
json.url favorite_publication_url(favorite_publication, format: :json)
