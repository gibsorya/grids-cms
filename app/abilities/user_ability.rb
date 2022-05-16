# class UserAbility
#     include CanCan::Ability

#     def initialize(user)
#         can :edit, User, id: user.id
#         return unless user.admin?
#         can :manage, Blog, user: user
#     end
# end
