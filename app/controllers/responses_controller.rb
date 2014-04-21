class ResponsesController < ApplicationController
  before_filter :find_copy_test
  before_filter :find_copy_sample
  def create
    @response = @copy_sample.responses.create!(params[:response].permit([{:response_answers_attributes => [:question_answer_id]}, :time_taken, :browser_agent_string, :trust_rating]))
    @next_copy_test = CopyTest.where("id != ?", @copy_test).order_by_rand.first
  end
  private
  def find_copy_test
    @copy_test = CopyTest.find(params[:copy_test_id])
  end
  def find_copy_sample
    @copy_sample = @copy_test.copy_samples.find(params[:copy_sample_id])
  end
end
