json.array!(@idollists) do |idollist|
  json.extract! idollist, :id
  json.url idollist_url(idollist, format: :json)
end
