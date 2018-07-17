class RenameColumnImage < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :image, :image_url
  end
end
