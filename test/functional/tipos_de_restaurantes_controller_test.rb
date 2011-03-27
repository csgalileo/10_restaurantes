require 'test_helper'

class TiposDeRestaurantesControllerTest < ActionController::TestCase
  setup do
    @tipos_de_restaurante = tipos_de_restaurantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipos_de_restaurantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipos_de_restaurante" do
    assert_difference('TiposDeRestaurante.count') do
      post :create, :tipos_de_restaurante => @tipos_de_restaurante.attributes
    end

    assert_redirected_to tipos_de_restaurante_path(assigns(:tipos_de_restaurante))
  end

  test "should show tipos_de_restaurante" do
    get :show, :id => @tipos_de_restaurante.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tipos_de_restaurante.to_param
    assert_response :success
  end

  test "should update tipos_de_restaurante" do
    put :update, :id => @tipos_de_restaurante.to_param, :tipos_de_restaurante => @tipos_de_restaurante.attributes
    assert_redirected_to tipos_de_restaurante_path(assigns(:tipos_de_restaurante))
  end

  test "should destroy tipos_de_restaurante" do
    assert_difference('TiposDeRestaurante.count', -1) do
      delete :destroy, :id => @tipos_de_restaurante.to_param
    end

    assert_redirected_to tipos_de_restaurantes_path
  end
end
