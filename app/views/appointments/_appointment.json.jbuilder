json.extract! appointment, :id, :date, :time, :location, :user_id, :doctor_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
