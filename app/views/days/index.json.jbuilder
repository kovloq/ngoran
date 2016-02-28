json.array!(@days) do |day|
  json.extract! day, :id, :name, :name_kana
  json.url day_url(day, format: :json)
end
