json.extract! user, :id, :user_id, :username, :password, :name, :surname, :birth_date, :reg_date, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
