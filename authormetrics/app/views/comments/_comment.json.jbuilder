json.extract! comment, :id, :publication_id, :user_id, :comment, :comment_timestamp, :created_at, :updated_at
json.url comment_url(comment, format: :json)
