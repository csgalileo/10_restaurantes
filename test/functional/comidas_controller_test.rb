require 'test_helper'

class ComidasControllerTest < ActionController::TestCase
  setup do
    @comida = comidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comida" do
    assert_difference('Comida.count') do
      post :create, :comida => @comida.attributes
    end

    assert_redirected_to comida_path(assigns(:comida))
  end

  test "should show comida" do
    get :show, :id => @comida.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @comida.to_param
    assert_response :success
  end

  test "should update comida" do
    put :update, :id => @comida.to_param, :comida => @comida.attributes
    assert_redirected_to comida_path(assigns(:comida))
  end

  test "should destroy comida" do
    assert_difference('Comida.count', -1) do
      delete :destroy, :id => @comida.to_param
    end

    assert_redirected_to comidas_path
  end
end
