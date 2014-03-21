class Admin::CopySamplesController < AdminController
  before_filter :find_test
  def create
    @copy_sample = @copy_test.copy_samples.build(params[:copy_sample].permit(:name, :copy, :published))
    @copy_sample.save!
    redirect_to edit_admin_copy_test_copy_sample_path(@copy_test, @copy_sample)
  end
  def edit
    @copy_sample = @copy_test.copy_samples.find(params[:id])
  end
  def update
    @copy_sample = @copy_test.copy_samples.find(params[:id])
    @copy_sample.update_attributes(params[:copy_sample].permit(:name, :copy, :published))
    @copy_sample.save!
    redirect_to edit_admin_copy_test_path(@copy_test)
  end
  private
  def find_test
    @copy_test = CopyTest.find(params[:copy_test_id])
  end
end
