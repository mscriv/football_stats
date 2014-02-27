json.array!(@teams) do |team|
  json.extract! team, :id, :team_guide, :nickname, :market, :team_details
  json.url team_url(team, format: :json)
end
