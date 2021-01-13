json.extract! diagnosis, :id, :name, :type, :location, :stage, :user_id, :doctor_id, :created_at, :updated_at
json.url diagnosis_url(diagnosis, format: :json)
