class Field < ApplicationRecord
  has_one :field_type
  has_and_belongs_to_many :content_types
end
