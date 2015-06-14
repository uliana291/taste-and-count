json.array!(@body_parameters) do |body_parameter|
  json.extract! body_parameter, :id, :user_id, :weight, :height
  json.url body_parameter_url(body_parameter, format: :json)
end
