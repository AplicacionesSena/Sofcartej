json.array!(@referencias_comerciales) do |referencias_comerciale|
  json.extract! referencias_comerciale, :id, :nombre
  json.url referencias_comerciale_url(referencias_comerciale, format: :json)
end
