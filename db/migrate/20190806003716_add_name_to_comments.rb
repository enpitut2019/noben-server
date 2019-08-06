class AddNameToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :user_name, :string, null: false
  end
end
