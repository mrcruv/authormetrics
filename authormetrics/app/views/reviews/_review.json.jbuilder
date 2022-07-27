json.extract! review, :id, :author_id, :user_id, :review, :review_timestamp, :created_at, :updated_at
json.url review_url(review, format: :json)
