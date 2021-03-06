class CopySamplesController < ApplicationController
  before_filter :find_copy_test

  def show
    @copy_sample = @copy_test.copy_samples.find(params[:id])
    if @copy_sample.published?
      @response = @copy_sample.responses.build
    else
      render :text => "This sample is currently unpublished"
    end
  end
  private
  def find_copy_test
    @copy_test = CopyTest.find(params[:copy_test_id])
  end
end
