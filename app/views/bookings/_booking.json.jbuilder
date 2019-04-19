json.extract! booking, :id, :user_id, :event_id, :is_editable, :created_at, :updated_at
json.url booking_url(booking, format: :json)
