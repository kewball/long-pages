require 'test_helper'

class LongPagesControllerTest < ActionController::TestCase
  setup do
    @long_page = long_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:long_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create long_page" do
    assert_difference('LongPage.count') do
      post :create, long_page: {  }
    end

    assert_redirected_to long_page_path(assigns(:long_page))
  end

  test "should show long_page" do
    get :show, id: @long_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @long_page
    assert_response :success
  end

  test "should update long_page" do
    patch :update, id: @long_page, long_page: {  }
    assert_redirected_to long_page_path(assigns(:long_page))
  end

  test "should destroy long_page" do
    assert_difference('LongPage.count', -1) do
      delete :destroy, id: @long_page
    end

    assert_redirected_to long_pages_path
  end
end
