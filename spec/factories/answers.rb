# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    question nil
    correct false
    answer "MyText"
  end
end
