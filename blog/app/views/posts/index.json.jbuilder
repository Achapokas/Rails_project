json.array!(@posts) do |post|
  json.extract! post, :id, :subject, :content, :published_at, :date
  json.url post_url(post, format: :json)
end
