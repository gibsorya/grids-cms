class Field < ApplicationRecord
  belongs_to :field_type
  belongs_to :field_list
end
