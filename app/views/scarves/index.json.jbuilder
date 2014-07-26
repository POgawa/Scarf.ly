json.array!(@scarves) do |scarf|
  json.extract! scarf, :id, :title, :description, :club_id, :user_id
  json.url scarf_url(scarf, format: :json)
end
