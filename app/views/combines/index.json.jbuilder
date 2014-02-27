json.array!(@combines) do |combine|
  json.extract! combine, :id, :name, :college, :position, :_40_yd_dash, :bench_press, :vertical_jump
  json.url combine_url(combine, format: :json)
end
