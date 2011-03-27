require 'test_helper'

class RestaurantesControllerTest < ActionController::TestCase
  setup do
    @restaurante = restaurantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurante" do
    assert_difference('Restaurante.count') do
      post :create, :restaurante => @restaurante.attributes
    end

    assert_redirected_to restaurante_path(assigns(:restaurante))
  end

  test "should show restaurante" do
    get :show, :id => @restaurante.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @restaurante.to_param
    assert_response :success
  end

  test "should update restaurante" do
    put :update, :id => @restaurante.to_param, :restaurante => @restaurante.attributes
    assert_redirected_to restaurante_path(assigns(:restaurante))
  end

  test "should destroy restaurante" do
    assert_difference('Restaurante.count', -1) do
      delete :destroy, :id => @restaurante.to_param
    end

    assert_redirected_to restaurantes_path
  end
end
