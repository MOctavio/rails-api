json.array!(@clients) do |client|
  json.extract! client, :id, :last_name, :first_name, :city, :country, :primary_phone, :secondary_phone, :email
  json.url client_url(client, format: :json)
end
