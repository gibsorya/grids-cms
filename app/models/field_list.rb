class FieldList < ApplicationRecord
  belongs_to :content_type
  has_many :fields
end
