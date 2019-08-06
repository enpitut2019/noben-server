class ChangeComments < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :user_name, :string, null: false, default: 'ななしさん'
  end
end
