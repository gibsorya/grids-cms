class AddTypeToFields < ActiveRecord::Migration[7.0]
  def change
    add_column :fields, :type, :string
  end
end
