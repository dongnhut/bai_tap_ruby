json.array!(@accounts) do |account|
  json.extract! account, :id, :Ten, :GioiTinh, :DiaChi
  json.url account_url(account, format: :json)
end
