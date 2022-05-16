class DropBlogsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :blogs
    drop_table :articles
  end
end
