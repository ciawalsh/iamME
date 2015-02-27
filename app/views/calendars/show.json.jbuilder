json.array!(@calendar.events) do |event|
  json.extract! event, :id, :name, :date, :description, :location
  json.image event.image, :url
  json.url event_url(event, format: :json)
end
json.name @calendar.name
json.start_date @calendar.start_date.strftime('%Y-%d-%m')
  

