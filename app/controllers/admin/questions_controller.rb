class Admin::QuestionsController < ApplicationController
  before_filter :find_test
  before_filter :find_sample
  def create
    @question = @copy_sample.questions.build(params[:question].permit(:question))
    @question.save!
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
end
