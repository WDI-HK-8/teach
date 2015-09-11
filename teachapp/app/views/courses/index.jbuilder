json.array! @courses do |course|
  json.id course.id
  json.title course.title
  json.description course.description
  json.image course.image
  json.category course.category
  json.price course.price
  json.video course.video
  json.created_at course.created_at
end