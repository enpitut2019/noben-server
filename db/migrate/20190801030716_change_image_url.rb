class ChangeImageUrl < ActiveRecord::Migration[5.2]
  def change
    change_column :notes, :image_url, :string, null: false
  end
end
