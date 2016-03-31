json.array!(@matches) do |match|
  json.extract! match, :id, :winning_state, :current_player
  json.url match_url(match, format: :json)
end
