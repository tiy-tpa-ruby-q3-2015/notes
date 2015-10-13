json.array!(@topics) do |topic|
  json.extract! topic, :id, :title, :long_description, :focus_area
  json.url topic_url(topic, format: :json)
end
