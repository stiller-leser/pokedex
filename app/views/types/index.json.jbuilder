json.array!(@types) do |type|
  json.extract! type, :id, :Main, :Secondary
  json.url type_url(type, format: :json)
end
