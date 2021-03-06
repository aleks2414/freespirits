class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.string :subtitulo
      t.text :body
      t.string :autor
      t.string :fecha
      t.string :tags
      t.references :user, foreign_key: true
      t.string :slug
      t.string :post_image

      t.timestamps
    end
  end
end
