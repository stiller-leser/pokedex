json.array!(@pokedex_lists) do |pokedex_list|
  json.extract! pokedex_list, :id, :name, :index, :weight, :height
  json.url pokedex_list_url(pokedex_list, format: :json)
end
