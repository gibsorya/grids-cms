# class BlogAbility
#     include CanCan::Ability
#         def initialize(user)
#             return unless user.admin?
#             can :manage, Blog, user: user
#         end
# end
