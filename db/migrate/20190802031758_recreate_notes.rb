class RecreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :subject, null: false
      t.timestamps
    end 
  end
end
