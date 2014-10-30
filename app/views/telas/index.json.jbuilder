json.array!(@telas) do |tela|
  json.extract! tela, :id, :nombre, :tiposTela_id, :basesTela_id, :proveedore_id, :referenciasComerciale_id, :composicion, :anchoOrillo, :uso_id, :acabado_id, :peso, :pesoUnidad, :fichaTecnica, :imagen
  json.url tela_url(tela, format: :json)
end
