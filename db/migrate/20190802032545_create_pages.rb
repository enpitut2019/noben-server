class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.references :note, foreign_key: true
      t.integer :order, null: false
      t.string :image_url, null: false
      t.timestamps
    end
  end
end
