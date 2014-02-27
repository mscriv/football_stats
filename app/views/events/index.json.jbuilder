json.array!(@events) do |event|
  json.extract! event, :id, :name, :date, :content
  json.url event_url(event, format: :json)
end
