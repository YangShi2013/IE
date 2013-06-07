json.array!(@users) do |user|
  json.extract! user, :name, :password, :birth, :cellNum, :homeNum, :club, :email, :address, :from, :qq, :MSN, :location, :condition
  json.url user_url(user, format: :json)
end