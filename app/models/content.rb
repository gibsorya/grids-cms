class Content < ApplicationRecord
  belongs_to :content_type
  validates :content_type_id, presence: true, uniqueness: false
end