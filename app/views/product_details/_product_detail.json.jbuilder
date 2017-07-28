json.extract! product_detail, :id, :product_id, :weight, :weight_control, :observation, :created_at, :updated_at
json.url product_detail_url(product_detail, format: :json)
