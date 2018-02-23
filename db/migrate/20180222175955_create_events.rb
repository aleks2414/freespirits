class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :nombre
      t.string :fecha
      t.string :lugar
      t.date :fecha_real
      t.string :descripcion
      t.string :link_boleto
      t.string :hora
      t.string :categoria
      t.string :foto
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
