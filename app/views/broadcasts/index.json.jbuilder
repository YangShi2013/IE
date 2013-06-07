json.array!(@broadcasts) do |broadcast|
  json.extract! broadcast, :content
  json.url broadcast_url(broadcast, format: :json)
end