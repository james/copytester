# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question_answer do
    question nil
    answer "MyString"
  end
end
