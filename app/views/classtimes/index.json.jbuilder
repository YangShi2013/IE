json.array!(@classtimes) do |classtime|
  json.extract! classtime, :name, :password, :totalTime, :takenTime, :balance, :VIPbalance, :givenVIPtime, :takenVIPTime, :lastClass, :validDate
  json.url classtime_url(classtime, format: :json)
end