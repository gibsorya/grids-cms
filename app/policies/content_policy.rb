# frozen_string_literal: true

class ContentPolicy < ApplicationPolicy
    def initialize(user, content_type)
        @user = user
        @content_type = content_type
      end
  
      def create?
          user.admin?
      end
end