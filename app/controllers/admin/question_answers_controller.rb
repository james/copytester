class Admin::QuestionAnswersController < ApplicationController
  before_filter :find_test
  before_filter :find_sample
  before_filter :find_question
  def create
    @question_answer = @question.question_answers.build(params[:question_answer].permit(:answer))
    @question_answer.save!
    redirect_to edit_admin_copy_test_copy_sample_question_path(@copy_test, @copy_sample, @question)
  end
  def edit
    @question = @copy_sample.questions.find(params[:id])
  end
  private
  def find_test
    @copy_test = CopyTest.find(params[:copy_test_id])
  end
  def find_sample
    @copy_sample = @copy_test.copy_samples.find(params[:copy_sample_id])
  end
  def find_question
    @question = @copy_sample.questions.find(params[:question_id])
  end
end
