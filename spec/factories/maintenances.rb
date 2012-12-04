# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :maintenance do
    shop_id 1
    work_id 1
    cost 1
    car_id 1
  end
end
