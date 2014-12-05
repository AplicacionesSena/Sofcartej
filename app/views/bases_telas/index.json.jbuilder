json.array!(@bases_telas) do |bases_tela|
  json.extract! bases_tela, :id, :clasificacione_id, :nombre
  json.url bases_tela_url(bases_tela, format: :json)
end
