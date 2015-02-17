json.users @users do |user|
  json.(user, :id, :name, :status)
  json.code do
    json.v1 "#{user[:id]}/#{user[:name]}"
  end
end