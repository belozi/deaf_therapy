json.array!(@mood_forms) do |mood_form|
  json.extract! mood_form, :id, :mood, :comment, :panic
  json.url mood_form_url(mood_form, format: :json)
end
