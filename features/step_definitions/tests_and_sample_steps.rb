Given(/^I have a copy test called "(.*?)"$/) do |name|
  CopyTest.create!(:name => name)
end

Given(/^"(.*?)" has a copy sample called "(.*?)" with content "(.*?)"$/) do |copy_test_name, copy_sample_name, copy_sample_content|
  copy_test = CopyTest.find_by_name(copy_test_name)
  copy_test.copy_samples.create(:name => copy_sample_name, :copy => copy_sample_content)
end
