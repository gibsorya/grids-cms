class ReplaceJoinTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :fields_content_types, :field_id
    remove_column :fields_content_types, :content_type_id
    drop_table :fields_content_types
  end

  create_table :content_types_fields, id: false do |t|
    t.belongs_to :field
    t.belongs_to :content_type
  end
end
