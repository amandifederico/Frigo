json.extract! lot_detail, :id, :lot_id, :animal_id, :quantity, :observation, :created_at, :updated_at
json.url lot_detail_url(lot_detail, format: :json)
