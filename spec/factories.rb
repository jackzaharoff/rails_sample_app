FactoryGirl.define do
  factory :user do
    name      "MH"
    email     "mh@example.com"
    password  'foobar'
    password_confirmation 'foobar'
  end
end