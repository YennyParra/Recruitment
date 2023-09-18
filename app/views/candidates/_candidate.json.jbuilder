json.extract! candidate, :id, :name, :photo, :profession, :current, :position, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
