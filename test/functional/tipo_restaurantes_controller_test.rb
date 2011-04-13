require 'test_helper'

class TipoRestaurantesControllerTest < ActionController::TestCase
  setup do
    @tipo_restaurante = tipo_restaurantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_restaurantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_restaurante" do
    assert_difference('TipoRestaurante.count') do
      post :create, :tipo_restaurante => @tipo_restaurante.attributes
    end

    assert_redirected_to tipo_restaurante_path(assigns(:tipo_restaurante))
  end

  test "should show tipo_restaurante" do
    get :show, :id => @tipo_restaurante.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tipo_restaurante.to_param
    assert_response :success
  end

  test "should update tipo_restaurante" do
    put :update, :id => @tipo_restaurante.to_param, :tipo_restaurante => @tipo_restaurante.attributes
    assert_redirected_to tipo_restaurante_path(assigns(:tipo_restaurante))
  end

  test "should destroy tipo_restaurante" do
    assert_difference('TipoRestaurante.count', -1) do
      delete :destroy, :id => @tipo_restaurante.to_param
    end

    assert_redirected_to tipo_restaurantes_path
  end
end
