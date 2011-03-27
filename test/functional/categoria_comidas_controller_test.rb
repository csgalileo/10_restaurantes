require 'test_helper'

class CategoriaComidasControllerTest < ActionController::TestCase
  setup do
    @categoria_comida = categoria_comidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoria_comidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria_comida" do
    assert_difference('CategoriaComida.count') do
      post :create, :categoria_comida => @categoria_comida.attributes
    end

    assert_redirected_to categoria_comida_path(assigns(:categoria_comida))
  end

  test "should show categoria_comida" do
    get :show, :id => @categoria_comida.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @categoria_comida.to_param
    assert_response :success
  end

  test "should update categoria_comida" do
    put :update, :id => @categoria_comida.to_param, :categoria_comida => @categoria_comida.attributes
    assert_redirected_to categoria_comida_path(assigns(:categoria_comida))
  end

  test "should destroy categoria_comida" do
    assert_difference('CategoriaComida.count', -1) do
      delete :destroy, :id => @categoria_comida.to_param
    end

    assert_redirected_to categoria_comidas_path
  end
end
