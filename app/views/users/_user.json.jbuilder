json.extract! user, :id, :name, :interest_1, :interest_2, :created_at, :updated_at
json.url user_url(user, format: :json)
