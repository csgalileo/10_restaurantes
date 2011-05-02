require 'test_helper'

class RestauranteUsersControllerTest < ActionController::TestCase
  setup do
    @restaurante_user = restaurante_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurante_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurante_user" do
    assert_difference('RestauranteUser.count') do
      post :create, :restaurante_user => @restaurante_user.attributes
    end

    assert_redirected_to restaurante_user_path(assigns(:restaurante_user))
  end

  test "should show restaurante_user" do
    get :show, :id => @restaurante_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @restaurante_user.to_param
    assert_response :success
  end

  test "should update restaurante_user" do
    put :update, :id => @restaurante_user.to_param, :restaurante_user => @restaurante_user.attributes
    assert_redirected_to restaurante_user_path(assigns(:restaurante_user))
  end

  test "should destroy restaurante_user" do
    assert_difference('RestauranteUser.count', -1) do
      delete :destroy, :id => @restaurante_user.to_param
    end

    assert_redirected_to restaurante_users_path
  end
end
