class ModifyFieldTypeColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :fields, :type, :string, null: false
  end
end
