require 'test_helper'

class AirlineClassesControllerTest < ActionController::TestCase
  setup do
    @airline_class = airline_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airline_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airline_class" do
    assert_difference('AirlineClass.count') do
      post :create, :airline_class => @airline_class.attributes
    end

    assert_redirected_to airline_class_path(assigns(:airline_class))
  end

  test "should show airline_class" do
    get :show, :id => @airline_class.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @airline_class.to_param
    assert_response :success
  end

  test "should update airline_class" do
    put :update, :id => @airline_class.to_param, :airline_class => @airline_class.attributes
    assert_redirected_to airline_class_path(assigns(:airline_class))
  end

  test "should destroy airline_class" do
    assert_difference('AirlineClass.count', -1) do
      delete :destroy, :id => @airline_class.to_param
    end

    assert_redirected_to airline_classes_path
  end
end
