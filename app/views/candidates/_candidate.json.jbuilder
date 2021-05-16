json.extract! candidate, :id, :name, :surname, :email, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
