json.array!(@users) do |user|
  json.extract! user, :id, :userID, :latitude, :longitude, :smoker, :transport, :marital_status, :birth_year, :color, :weight, :budget, :height
  json.url user_url(user, format: :json)
end
