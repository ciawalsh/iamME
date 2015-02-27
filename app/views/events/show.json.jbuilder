json.id   @event.id 
json.name @event.name
json.description @event.description
json.created_at @event.created_at
json.updated_at @event.updated_at
json.location @event.location
json.date @event.date.strftime("%Y-%m-%d")
json.image @event.image, :url
