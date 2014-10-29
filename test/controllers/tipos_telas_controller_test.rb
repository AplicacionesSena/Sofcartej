require 'test_helper'

class TiposTelasControllerTest < ActionController::TestCase
  setup do
    @tipos_tela = tipos_telas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipos_telas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipos_tela" do
    assert_difference('TiposTela.count') do
      post :create, tipos_tela: { nombre: @tipos_tela.nombre }
    end

    assert_redirected_to tipos_tela_path(assigns(:tipos_tela))
  end

  test "should show tipos_tela" do
    get :show, id: @tipos_tela
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipos_tela
    assert_response :success
  end

  test "should update tipos_tela" do
    patch :update, id: @tipos_tela, tipos_tela: { nombre: @tipos_tela.nombre }
    assert_redirected_to tipos_tela_path(assigns(:tipos_tela))
  end

  test "should destroy tipos_tela" do
    assert_difference('TiposTela.count', -1) do
      delete :destroy, id: @tipos_tela
    end

    assert_redirected_to tipos_telas_path
  end
end
