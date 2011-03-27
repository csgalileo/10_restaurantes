require 'test_helper'

class OfertasControllerTest < ActionController::TestCase
  setup do
    @oferta = ofertas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ofertas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oferta" do
    assert_difference('Oferta.count') do
      post :create, :oferta => @oferta.attributes
    end

    assert_redirected_to oferta_path(assigns(:oferta))
  end

  test "should show oferta" do
    get :show, :id => @oferta.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @oferta.to_param
    assert_response :success
  end

  test "should update oferta" do
    put :update, :id => @oferta.to_param, :oferta => @oferta.attributes
    assert_redirected_to oferta_path(assigns(:oferta))
  end

  test "should destroy oferta" do
    assert_difference('Oferta.count', -1) do
      delete :destroy, :id => @oferta.to_param
    end

    assert_redirected_to ofertas_path
  end
end
