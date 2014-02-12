Given(/^I have a copy test called "(.*?)"$/) do |name|
  CopyTest.create!(:name => name)
end

Given(/^"(.*?)" has a copy sample called "(.*?)" with content "(.*?)"$/) do |copy_test_name, copy_sample_name, copy_sample_content|
  copy_test = CopyTest.find_by_name(copy_test_name)
  copy_test.copy_samples.create!(:name => copy_sample_name, :copy => copy_sample_content)
end

Given(/^"(.*?)" has the question "(.*?)"$/) do |copy_test_name, question|
  copy_test = CopyTest.find_by_name(copy_test_name)
  copy_test.questions.create!(:question => question)
end

Given(/^"(.*?)" has the answer "(.*?)"$/) do |question_text, answer_text|
  question = Question.find_by_question(question_text)
  question.question_answers.create!(:answer => answer_text)
end

Then(/^"(.*?)" should have been chosen (\d+) times?$/) do |answer_text, times|
  question_answer = QuestionAnswer.find_by_answer(answer_text)
  question_answer.response_answers.count.should == times.to_i
end
