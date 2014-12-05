json.array!(@articulos) do |articulo|
  json.extract! articulo, :id, :titulo
  json.url articulo_url(articulo, format: :json)
end
