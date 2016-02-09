json.array!(@positive_phrases) do |positive_phrase|
  json.extract! positive_phrase, :id, :text
  json.url positive_phrase_url(positive_phrase, format: :json)
end
