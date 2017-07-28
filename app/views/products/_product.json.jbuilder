json.extract! product, :id, :lot_id, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
