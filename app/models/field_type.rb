class FieldType < ApplicationRecord
    has_and_belongs_to_many :fields
end
