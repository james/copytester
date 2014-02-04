class Admin::CopyTestsController < ApplicationController
  def index
    @copy_tests = CopyTest.all
  end
  def new
    @copy_test = CopyTest.new
  end
  def create
    @copy_test = CopyTest.create!(params[:copy_test].permit(:name))
    redirect_to admin_copy_tests_path
  end
end
