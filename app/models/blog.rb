class Blog < ApplicationRecord
  has_rich_text :blog_content

  # delegate :can?, :cannot?, to: :ability

  # def ability
  #   @ability ||= BlogAbility.new(self)
  # end
end
