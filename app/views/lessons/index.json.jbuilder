json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :user_id, :lesson_title
  json.url lesson_url(lesson, format: :json)
end
