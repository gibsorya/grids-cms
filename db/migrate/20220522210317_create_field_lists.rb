class CreateFieldLists < ActiveRecord::Migration[7.0]
  def change
    create_table :field_lists do |t|
      t.references :content_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
