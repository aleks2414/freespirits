json.extract! event, :id, :nombre, :fecha, :lugar, :fecha_real, :descripcion, :link_boleto, :hora, :categoria, :foto, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
