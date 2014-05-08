require 'test_helper'

class ShopdetailsControllerTest < ActionController::TestCase
  setup do
    @shopdetail = shopdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopdetail" do
    assert_difference('Shopdetail.count') do
      post :create, shopdetail: {  }
    end

    assert_redirected_to shopdetail_path(assigns(:shopdetail))
  end

  test "should show shopdetail" do
    get :show, id: @shopdetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopdetail
    assert_response :success
  end

  test "should update shopdetail" do
    patch :update, id: @shopdetail, shopdetail: {  }
    assert_redirected_to shopdetail_path(assigns(:shopdetail))
  end

  test "should destroy shopdetail" do
    assert_difference('Shopdetail.count', -1) do
      delete :destroy, id: @shopdetail
    end

    assert_redirected_to shopdetails_path
  end
end
