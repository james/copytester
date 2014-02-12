require 'spec_helper'

describe CopySample do
  it "should markup copy" do
    sample = CopySample.new(:copy => "# Test")
    sample.copy_markup.should == "<h1>Test</h1>\n"
  end
  it "should make an average of time taken" do
    sample = CopySample.create!(:copy => "# Test")
    sample.responses.create!(:time_taken => 10)
    sample.responses.create!(:time_taken => 20)
    sample.average_time_taken.should == 15
  end
  it "should make an average of trust rating" do
    sample = CopySample.create!(:copy => "# Test")
    sample.responses.create!(:trust_rating => 1)
    sample.responses.create!(:trust_rating => 3)
    sample.average_trust_rating.should == 2
  end
  it "should correctly calculate correctly answered percentage" do
    copy_test = CopyTest.create!
    copy_sample = copy_test.copy_samples.create!
    copy_sample2 = copy_test.copy_samples.create!
    question = copy_test.questions.create
    question_answer1 = question.question_answers.create
    question_answer2 = question.question_answers.create
    response1 = copy_sample.responses.create
    response2 = copy_sample.responses.create
    response3 = copy_sample.responses.create
    response4 = copy_sample2.responses.create
    responseanswer1 = response1.response_answers.create(:question_answer => question_answer1)
    responseanswer2 = response2.response_answers.create(:question_answer => question_answer2)
    responseanswer3 = response3.response_answers.create(:question_answer => question_answer1)
    responseanswer4 = response4.response_answers.create(:question_answer => question_answer1)
    question.correct_question_answer = question_answer1
    copy_sample.correctly_answered_percentage_for_question(question).should == 66.66666666666666
  end
end
