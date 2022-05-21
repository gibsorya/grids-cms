FactoryBot.define do
  factory :content_type do
    # id { 0 }

    after(:create) do |content_type|
      # create_list(:field, 3, content_type: content_type)
    end
  end
end
