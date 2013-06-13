json.array!(@topics) do |topic|
  json.extract! topic, :year, :month, :day, :time, :people, :theme, :preparation, :homework
  json.url topic_url(topic, format: :json)
end