json.array!(@tipos_telas) do |tipos_tela|
  json.extract! tipos_tela, :id, :nombre
  json.url tipos_tela_url(tipos_tela, format: :json)
end
