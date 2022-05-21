class Field < ApplicationRecord
  has_and_belongs_to_many :content_types
end

class Text
end

class RichText
end