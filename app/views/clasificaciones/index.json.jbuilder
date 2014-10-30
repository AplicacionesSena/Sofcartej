json.array!(@clasificaciones) do |clasificacione|
  json.extract! clasificacione, :id, :nombre, :descripcion
  json.url clasificacione_url(clasificacione, format: :json)
end
