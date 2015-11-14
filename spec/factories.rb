FactoryGirl.define do
  factory :user do
    provider "MyString"
    uid "MyString"
    name "MyString"
    oauth_token "MyString"
    oauth_expires_at "2015-11-14 14:20:31"
  end

  factory :model do

  end
  factory :meal do
    title "MyString"
    description "MyText"
    picture_url "MyString"
  end

end
