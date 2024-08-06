json.extract! event, :id, :name, :description, :city, :capacity, :date, :created_at, :updated_at
json.url event_url(event, format: :json)
