json.extract! block, :id, :user_id, :event_id, :name, :date, :time, :description, :category, :created_at, :updated_at
json.url block_url(block, format: :json)
