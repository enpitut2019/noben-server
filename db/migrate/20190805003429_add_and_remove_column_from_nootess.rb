class AddAndRemoveColumnFromNootess < ActiveRecord::Migration[5.2]
  def change
    remove_column :notes, :subject
    add_column :notes, :subject_name, :string, null: false
  end
end
