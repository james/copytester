class ResponsesController < ApplicationController
  before_filter :find_copy_test
  before_filter :find_copy_sample
  def create
    @response = @copy_sample.responses.create!(params[:response].permit(:response_answers_attributes, :time_taken))
    render :text => "Thankyou"
  end
  private
  def find_copy_test
    @copy_test = CopyTest.find(params[:copy_test_id])
  end
  def find_copy_sample
    @copy_sample = @copy_test.copy_samples.find(params[:copy_sample_id])
  end
end