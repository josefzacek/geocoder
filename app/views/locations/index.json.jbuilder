json.array!(@locations) do |location|
  json.extract! location, :id, :title, :address, :city, :country, :county, :postal_code
  json.url location_url(location, format: :json)
end
