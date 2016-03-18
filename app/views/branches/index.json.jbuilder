json.array!(@branches) do |branch|
  json.extract! branch, :id, :name, :address, :latitude, :longitude
  json.url branch_url(branch, format: :json)
end
