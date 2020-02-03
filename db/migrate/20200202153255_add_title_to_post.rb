class AddTitleToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :title, :string
    add_column :posts, :content, :text
    add_column :posts, :image_url, :string
  end
end
