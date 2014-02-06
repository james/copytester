class Admin::CopySamplesController < ApplicationController
  def create
    @copy_test = CopyTest.find(params[:copy_test_id])
    @copy_sample = @copy_test.copy_samples.build(params[:copy_sample].permit(:name, :copy))
    @copy_sample.save!
    redirect_to edit_admin_copy_test_path(@copy_test)
  end
  def edit
    @copy_test = CopyTest.find(params[:copy_test_id])
    @copy_sample = @copy_test.copy_samples.find(params[:id])
  end
  def update
    @copy_test = CopyTest.find(params[:copy_test_id])
    @copy_sample = @copy_test.copy_samples.find(params[:id])
    @copy_sample.update_attributes(params[:copy_sample].permit(:name, :copy))
    @copy_sample.save!
    redirect_to edit_admin_copy_test_path(@copy_test)
  end
end
