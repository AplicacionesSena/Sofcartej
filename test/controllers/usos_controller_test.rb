require 'test_helper'

class UsosControllerTest < ActionController::TestCase
  setup do
    @uso = usos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uso" do
    assert_difference('Uso.count') do
      post :create, uso: { nombre: @uso.nombre }
    end

    assert_redirected_to uso_path(assigns(:uso))
  end

  test "should show uso" do
    get :show, id: @uso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uso
    assert_response :success
  end

  test "should update uso" do
    patch :update, id: @uso, uso: { nombre: @uso.nombre }
    assert_redirected_to uso_path(assigns(:uso))
  end

  test "should destroy uso" do
    assert_difference('Uso.count', -1) do
      delete :destroy, id: @uso
    end

    assert_redirected_to usos_path
  end
end
