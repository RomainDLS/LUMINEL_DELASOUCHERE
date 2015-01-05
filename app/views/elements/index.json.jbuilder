json.array!(@elements) do |element|
  json.extract! element, :id, :name, :id_liste
  json.url element_url(element, format: :json)
end
