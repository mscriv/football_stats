json.array!(@players) do |player|
  json.extract! player, :id, :player_guide, :first_name, :last_name, :full_name, :abbr_name, :player_details, :team_id
  json.url player_url(player, format: :json)
end
