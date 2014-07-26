json.array!(@questions) do |question|
  json.extract! question, :id, :lesson_id, :question, :question_type
  json.url question_url(question, format: :json)
end
