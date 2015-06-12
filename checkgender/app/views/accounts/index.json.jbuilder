json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :password_hash, :gender, :user_access_token, :user_account_id
  json.url account_url(account, format: :json)
end
