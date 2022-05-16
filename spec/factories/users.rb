FactoryBot.define do
  factory :user do
    username { "user" }
    email { "user@email.com" }
    password { "password" }
    role { "user" }
  end
end
