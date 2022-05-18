class ContentType < ApplicationRecord
  belongs_to :content
  has_many :fields
end
