json.extract! logement, :id, :title, :pic, :created_at, :updated_at
json.url logement_url(logement, format: :json)
