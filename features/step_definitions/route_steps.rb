When(/^I view Copy Sample "(.*?)"$/) do |copy_sample_name|
  copy_sample = CopySample.find_by_name(copy_sample_name)
  visit copy_test_copy_sample_path(copy_sample.copy_test, copy_sample)
end
