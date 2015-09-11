json.array! @users do |user|
  json.id user.id
  json.name user.name
  json.email user.email
  json.pwd user.pwd
  json.bio user.bio
  json.instructor user.instructor
  json.created_at user.created_at
end