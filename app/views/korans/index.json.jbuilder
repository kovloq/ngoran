json.array!(@korans) do |koran|
  json.extract! koran, :id
  json.url koran_url(koran, format: :json)
end
