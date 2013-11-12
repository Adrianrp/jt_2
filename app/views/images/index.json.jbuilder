json.array!(@images) do |image|
  json.extract! image, :info_product_id, :image
  json.url image_url(image, format: :json)
end
