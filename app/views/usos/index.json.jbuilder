json.array!(@usos) do |uso|
  json.extract! uso, :id, :nombre
  json.url uso_url(uso, format: :json)
end
