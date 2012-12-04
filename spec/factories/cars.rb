# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    name "MyString"
    purchased_on "2012-12-04"
    price 1
    year 1
    user_id 1
  end
end
