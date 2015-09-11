json.array! @users do |user|
  json.id user.id
  json.title user.name
  json.content user.email
  json.category user.password
  json.created_at user.created_at
end