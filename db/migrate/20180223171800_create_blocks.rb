class CreateBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :blocks do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :name
      t.string :date
      t.string :time
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
