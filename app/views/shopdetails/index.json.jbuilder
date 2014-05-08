json.array!(@shopdetails) do |shopdetail|
  json.extract! shopdetail, :id
  json.url shopdetail_url(shopdetail, format: :json)
end
