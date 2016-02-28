json.array!(@deliveries) do |delivery|
  json.extract! delivery, :id, :customer_id, :koran_id, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday
  json.url delivery_url(delivery, format: :json)
end
