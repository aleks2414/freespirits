json.extract! post, :id, :titulo, :subtitulo, :body, :autor, :fecha, :tags, :user_id, :slug, :post_image, :created_at, :updated_at
json.url post_url(post, format: :json)
