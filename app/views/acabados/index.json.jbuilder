json.array!(@acabados) do |acabado|
  json.extract! acabado, :id, :nombre
  json.url acabado_url(acabado, format: :json)
end
