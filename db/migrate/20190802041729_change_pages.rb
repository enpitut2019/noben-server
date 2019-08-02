class ChangePages < ActiveRecord::Migration[5.2]
  def change
        change_column :pages, :note_id, :bigint, null: false
  end
end
