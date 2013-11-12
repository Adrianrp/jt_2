json.array!(@info_products) do |info_product|
  json.extract! info_product, :title, :description, :image_id, :price
  json.url info_product_url(info_product, format: :json)
end
