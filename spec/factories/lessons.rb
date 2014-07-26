# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lesson do
    user nil
    lesson_title "MyText"
  end
end
