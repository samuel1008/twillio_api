json.extract! person, :id, :name, :phone, :user_id, :created_at, :updated_at
json.url person_url(person, format: :json)
