# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :copy_sample do
    copy "MyText"
    copy_test ""
    name "MyString"
  end
end
