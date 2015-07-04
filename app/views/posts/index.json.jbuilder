json.array!(@posts) do |post|
  json.extract! post, :id, :title, :going_from, :going_to, :time, :date, :phone_number, :user_id
  json.url post_url(post, format: :json)
end
