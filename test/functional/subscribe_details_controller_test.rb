require 'test_helper'

class SubscribeDetailsControllerTest < ActionController::TestCase
  setup do
    @subscribe_detail = subscribe_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subscribe_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subscribe_detail" do
    assert_difference('SubscribeDetail.count') do
      post :create, :subscribe_detail => @subscribe_detail.attributes
    end

    assert_redirected_to subscribe_detail_path(assigns(:subscribe_detail))
  end

  test "should show subscribe_detail" do
    get :show, :id => @subscribe_detail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @subscribe_detail.to_param
    assert_response :success
  end

  test "should update subscribe_detail" do
    put :update, :id => @subscribe_detail.to_param, :subscribe_detail => @subscribe_detail.attributes
    assert_redirected_to subscribe_detail_path(assigns(:subscribe_detail))
  end

  test "should destroy subscribe_detail" do
    assert_difference('SubscribeDetail.count', -1) do
      delete :destroy, :id => @subscribe_detail.to_param
    end

    assert_redirected_to subscribe_details_path
  end
end
