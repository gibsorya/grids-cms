class RemoveFields < ActiveRecord::Migration[7.0]
  def change
    drop_table :content_types_fields
    drop_table :fields
  end
end
