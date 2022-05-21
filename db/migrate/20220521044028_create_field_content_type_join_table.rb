class CreateFieldContentTypeJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :fields_content_types, id: false do |t|
      t.belongs_to :field
      t.belongs_to :content_type
    end
  end
end
