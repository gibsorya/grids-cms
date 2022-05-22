class FieldType < ApplicationRecord
    enum type: { :text_field => 0, :rich_text_field => 1 }
end
