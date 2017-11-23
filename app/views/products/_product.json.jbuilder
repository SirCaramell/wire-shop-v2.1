json.extract! product, :id, :product_id, :brutto_price, :netto_price, :category, :ean, :image, :product_name, :quantity_in_stock, :text_description, :created_at, :updated_at
json.url product_url(product, format: :json)
