json.array!(@rations) do |ration|
  json.extract! ration, :id, :user_id, :calories, :proteins, :fats, :carbohydrates
  json.url ration_url(ration, format: :json)
end
