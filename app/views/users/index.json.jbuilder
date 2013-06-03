json.array!(@users) do |user|
  json.extract! user, :name, :password, :course
  json.url user_url(user, format: :json)
end