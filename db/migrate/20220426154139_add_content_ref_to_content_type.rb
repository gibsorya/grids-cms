class AddContentRefToContentType < ActiveRecord::Migration[7.0]
  def change
    add_reference :content_types, :content, null: false, foreign_key: true
  end
end
