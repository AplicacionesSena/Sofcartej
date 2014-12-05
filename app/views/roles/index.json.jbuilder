json.array!(@roles) do |role|
  json.extract! role, :id, :rol
  json.url role_url(role, format: :json)
end
