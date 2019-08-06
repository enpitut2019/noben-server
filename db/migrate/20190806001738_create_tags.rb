class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.references :note, foreign_key: true, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
