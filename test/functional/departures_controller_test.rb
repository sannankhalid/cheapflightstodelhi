require 'test_helper'

class DeparturesControllerTest < ActionController::TestCase
  setup do
    @departure = departures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:departures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create departure" do
    assert_difference('Departure.count') do
      post :create, :departure => @departure.attributes
    end

    assert_redirected_to departure_path(assigns(:departure))
  end

  test "should show departure" do
    get :show, :id => @departure.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @departure.to_param
    assert_response :success
  end

  test "should update departure" do
    put :update, :id => @departure.to_param, :departure => @departure.attributes
    assert_redirected_to departure_path(assigns(:departure))
  end

  test "should destroy departure" do
    assert_difference('Departure.count', -1) do
      delete :destroy, :id => @departure.to_param
    end

    assert_redirected_to departures_path
  end
end
