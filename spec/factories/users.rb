FactoryBot.define do
  factory :user do
    name {"takanori"}
    email {"test@gmail.com"}
    password {"password"}
    password_confirmation {"password"}
  end
end