require 'test_helper'

class LeBlogsControllerTest < ActionController::TestCase
  setup do
    @le_blog = le_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:le_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create le_blog" do
    assert_difference('LeBlog.count') do
      post :create, le_blog: { author: @le_blog.author, blog_entry: @le_blog.blog_entry, title: @le_blog.title }
    end

    assert_redirected_to le_blog_path(assigns(:le_blog))
  end

  test "should show le_blog" do
    get :show, id: @le_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @le_blog
    assert_response :success
  end

  test "should update le_blog" do
    patch :update, id: @le_blog, le_blog: { author: @le_blog.author, blog_entry: @le_blog.blog_entry, title: @le_blog.title }
    assert_redirected_to le_blog_path(assigns(:le_blog))
  end

  test "should destroy le_blog" do
    assert_difference('LeBlog.count', -1) do
      delete :destroy, id: @le_blog
    end

    assert_redirected_to le_blogs_path
  end
end
