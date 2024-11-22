FactoryBot.define do
  factory :message do
    content { "MyText" }
    chat { nil }
    sender_name { "MyString" }
  end
end
