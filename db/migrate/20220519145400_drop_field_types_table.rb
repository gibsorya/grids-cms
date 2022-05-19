class DropFieldTypesTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :fields, :field_type_id
    drop_table :field_types
  end
end
