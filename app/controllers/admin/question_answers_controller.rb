class Admin::QuestionAnswersController < ApplicationController
  before_filter :find_test
  before_filter :find_question
  def create
    @question_answer = @question.question_answers.build(params[:question_answer].permit(:answer))
    @question_answer.save!
    redirect_to edit_admin_copy_test_question_path(@copy_test, @question)
  end
  def edit
    @question_answer = @question.question_answers.find(params[:id])
  end
  def update
    @question_answer = @question.question_answers.find(params[:id])
    @question_answer.update_attributes(params[:question_answer].permit(:answer))    
    redirect_to edit_admin_copy_test_question_path(@copy_test, @question)
  end
  private
  def find_test
    @copy_test = CopyTest.find(params[:copy_test_id])
  end
  def find_question
    @question = @copy_test.questions.find(params[:question_id])
  end
end
