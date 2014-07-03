# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    lesson nil
    question "MyText"
    question_type 1
  end
end
