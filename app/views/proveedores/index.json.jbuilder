json.array!(@proveedores) do |proveedore|
  json.extract! proveedore, :id, :nombre, :telefono, :direccion, :correo
  json.url proveedore_url(proveedore, format: :json)
end
