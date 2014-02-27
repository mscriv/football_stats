json.array!(@player_stats) do |player_stat|
  json.extract! player_stat, :id, :player_id, :stats
  json.url player_stat_url(player_stat, format: :json)
end
