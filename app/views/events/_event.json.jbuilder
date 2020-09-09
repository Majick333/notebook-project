json.extract! event, :id, :name, :due_date, :start_time, :finish_time, :location, :description, :priority, :created_at, :updated_at
json.url event_url(event, format: :json)
