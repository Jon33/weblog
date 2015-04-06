json.array!(@commets) do |commet|
  json.extract! commet, :id, :post_id, :body
  json.url commet_url(commet, format: :json)
end
