# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :scarf do
    title "MyString"
    description "MyString"
    club_id 1
    user_id 1
  end
end
