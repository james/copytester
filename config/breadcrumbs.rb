crumb :root do
  link "Copy Tests", admin_root_path
end

crumb :copy_test do |copy_test|
  link copy_test.name, admin_copy_test_path(copy_test)
end

crumb :results do |copy_test|
  link "Results"
  parent :copy_test, copy_test
end

crumb :copy_sample do |copy_sample|
  link copy_sample.name, admin_copy_test_copy_sample_path(copy_sample.copy_test, copy_sample)
  parent :copy_test, copy_sample.copy_test
end

crumb :question do |question|
  link question.question, admin_copy_test_question_path(question.copy_test, question)
  parent :copy_test, question.copy_test
end

crumb :question_answer do |question_answer|
  link question_answer.answer, admin_copy_test_question_question_answer_path(question_answer.question.copy_test, question_answer.question, question_answer)
  parent :question, question_answer.question
end