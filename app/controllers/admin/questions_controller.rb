class Admin::QuestionsController < ApplicationController
  before_filter :find_test
  def create
    @question = @copy_test.questions.build(params[:question].permit(:question))
    @question.save!
    redirect_to edit_admin_copy_test_question_path(@copy_test, @question)
  end
  def edit
    @question = @copy_test.questions.find(params[:id])
  end
  private
  def find_test
    @copy_test = CopyTest.find(params[:copy_test_id])
  end
end
