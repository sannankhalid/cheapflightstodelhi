require 'test_helper'

class EnquiryDetailsControllerTest < ActionController::TestCase
  setup do
    @enquiry_detail = enquiry_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enquiry_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enquiry_detail" do
    assert_difference('EnquiryDetail.count') do
      post :create, :enquiry_detail => @enquiry_detail.attributes
    end

    assert_redirected_to enquiry_detail_path(assigns(:enquiry_detail))
  end

  test "should show enquiry_detail" do
    get :show, :id => @enquiry_detail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @enquiry_detail.to_param
    assert_response :success
  end

  test "should update enquiry_detail" do
    put :update, :id => @enquiry_detail.to_param, :enquiry_detail => @enquiry_detail.attributes
    assert_redirected_to enquiry_detail_path(assigns(:enquiry_detail))
  end

  test "should destroy enquiry_detail" do
    assert_difference('EnquiryDetail.count', -1) do
      delete :destroy, :id => @enquiry_detail.to_param
    end

    assert_redirected_to enquiry_details_path
  end
end
