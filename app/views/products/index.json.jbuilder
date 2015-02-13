json.array!(@products) do |product|
  json.extract! product, :id, :name, :email, :price, :category, :type, :description
  json.url product_url(product, format: :json)
end
