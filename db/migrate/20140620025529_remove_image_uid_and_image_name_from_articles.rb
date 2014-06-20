class RemoveImageUidAndImageNameFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :image_uid, :string
    remove_column :articles, :image_name, :string
  end
end
