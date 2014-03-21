class Admin::CopyTestsController < AdminController
  def index
    @copy_tests = CopyTest.all
  end
  def show
    @copy_test = CopyTest.find(params[:id])    
  end
  def new
    @copy_test = CopyTest.new
  end
  def create
    @copy_test = CopyTest.create!(params[:copy_test].permit(:name))
    redirect_to admin_copy_tests_path
  end
  def edit
    @copy_test = CopyTest.find(params[:id])
  end
  def update
    @copy_test = CopyTest.find(params[:id])
    @copy_test.update_attributes(params[:copy_test].permit(:name))
    redirect_to admin_copy_tests_path
  end
end
