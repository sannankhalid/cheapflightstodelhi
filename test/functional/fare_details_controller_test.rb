require 'test_helper'

class FareDetailsControllerTest < ActionController::TestCase
  setup do
    @fare_detail = fare_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fare_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fare_detail" do
    assert_difference('FareDetail.count') do
      post :create, :fare_detail => @fare_detail.attributes
    end

    assert_redirected_to fare_detail_path(assigns(:fare_detail))
  end

  test "should show fare_detail" do
    get :show, :id => @fare_detail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fare_detail.to_param
    assert_response :success
  end

  test "should update fare_detail" do
    put :update, :id => @fare_detail.to_param, :fare_detail => @fare_detail.attributes
    assert_redirected_to fare_detail_path(assigns(:fare_detail))
  end

  test "should destroy fare_detail" do
    assert_difference('FareDetail.count', -1) do
      delete :destroy, :id => @fare_detail.to_param
    end

    assert_redirected_to fare_details_path
  end
end
