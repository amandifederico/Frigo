json.extract! sub_product_detail, :id, :sub_product_id, :sub_product_type_id, :weight, :weight_control, :observation, :created_at, :updated_at
json.url sub_product_detail_url(sub_product_detail, format: :json)
