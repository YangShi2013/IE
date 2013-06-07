json.array!(@topics) do |topic|
  json.extract! topic, :date, :time, :people, :theme
  json.url topic_url(topic, format: :json)
end