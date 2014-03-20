class CopyTestsController < ApplicationController
  def index
    copy_sample = CopySample.published.order("responses_count ASC").first
    redirect_to copy_test_copy_sample_path(copy_sample.copy_test, copy_sample)
  end
  def show
    copy_test = CopyTest.find(params[:id])
    copy_sample = copy_test.copy_samples.published.order("responses_count ASC").first
    redirect_to copy_test_copy_sample_path(copy_sample.copy_test, copy_sample)
  end
end
