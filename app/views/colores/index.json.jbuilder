json.array!(@colores) do |colore|
  json.extract! colore, :id, :cantidadActual, :entrada, :salida, :tela_id
  json.url colore_url(colore, format: :json)
end
