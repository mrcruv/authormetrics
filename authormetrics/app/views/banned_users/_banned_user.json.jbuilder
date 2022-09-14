json.extract! banned_user, :id, :user_id, :admin_id, :start_date, :end_date, :reason, :created_at, :updated_at
json.url banned_user_url(banned_user, format: :json)
