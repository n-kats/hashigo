require 'test_helper'

class BlogReportsControllerTest < ActionController::TestCase
  setup do
    @blog_report = blog_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end
=begin
  test "should create blog_report" do
    assert_difference('BlogReport.count') do
      post :create, blog_report: { body: @blog_report.body, file_title: @blog_report.file_title, title: @blog_report.title }
    end

    assert_redirected_to blog_report_path(assigns(:blog_report))
  end
=end
  test "should show blog_report" do
    get :show, id: @blog_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_report
    assert_response :success
  end

  test "should update blog_report" do
    patch :update, id: @blog_report, blog_report: { body: @blog_report.body, file_title: @blog_report.file_title, title: @blog_report.title }
    assert_redirected_to blog_report_path(assigns(:blog_report))
  end

  test "should destroy blog_report" do
    assert_difference('BlogReport.count', -1) do
      delete :destroy, id: @blog_report
    end

    assert_redirected_to blog_reports_path
  end
end
