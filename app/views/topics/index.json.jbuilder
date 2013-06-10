json.array!(@topics) do |topic|
  json.extract! topic, :year, :month, :day, :startTime, :endTime, :people, :theme, :preparation, :homework
  json.url topic_url(topic, format: :json)
end