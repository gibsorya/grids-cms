class BlogPolicy < ApplicationPolicy
  attr_reader :user, :blog

  def initialize(user, blog)
    super()

    @user = user
    @blog = blog
  end

  def create?
    user.admin?
  end

  def update?
    user.admin? || user.moderator?
  end

  def destroy?
    user.admin?
  end
end
