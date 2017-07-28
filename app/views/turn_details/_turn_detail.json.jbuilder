json.extract! turn_detail, :id, :turn_id, :agent_id, :place_id, :position_id, :observation, :created_at, :updated_at
json.url turn_detail_url(turn_detail, format: :json)
