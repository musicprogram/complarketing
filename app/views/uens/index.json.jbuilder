json.array!(@uens) do |uen|
  json.extract! uen, :id, :region, :country
  json.url uen_url(uen, format: :json)
end
