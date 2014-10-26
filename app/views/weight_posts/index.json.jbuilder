json.array!(@weight_posts) do |weight_post|
  json.extract! weight_post, :id, :comment, :weight, :fat_per, :bmi, :weight_date
  json.url weight_post_url(weight_post, format: :json)
end
