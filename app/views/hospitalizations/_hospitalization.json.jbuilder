json.extract! hospitalization, :id, :date, :admit, :discharge, :reasons, :created_at, :updated_at
json.url hospitalization_url(hospitalization, format: :json)
