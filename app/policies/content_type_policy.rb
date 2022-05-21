class ContentTypePolicy < ApplicationPolicy
    attr_reader :user, :content_type

    def initialize(user, content_type)
      @user = user
      @content_type = content_type
    end

    def create?
        user.admin?
    end

    def update?
        user.admin? || user.moderator?
    end
end