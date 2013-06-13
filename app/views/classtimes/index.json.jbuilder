json.array!(@classtimes) do |classtime|
  json.extract! classtime, :name, :password, :totalTime, :takenTime, :balance, :VIPbalance, :givenVIPTime, :takenVIPTime, :lastClass, :validYear, :validMonth, :validDay
  json.url classtime_url(classtime, format: :json)
end