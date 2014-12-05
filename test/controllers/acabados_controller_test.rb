require 'test_helper'

class AcabadosControllerTest < ActionController::TestCase
  setup do
    @acabado = acabados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acabados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acabado" do
    assert_difference('Acabado.count') do
      post :create, acabado: { nombre: @acabado.nombre }
    end

    assert_redirected_to acabado_path(assigns(:acabado))
  end

  test "should show acabado" do
    get :show, id: @acabado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acabado
    assert_response :success
  end

  test "should update acabado" do
    patch :update, id: @acabado, acabado: { nombre: @acabado.nombre }
    assert_redirected_to acabado_path(assigns(:acabado))
  end

  test "should destroy acabado" do
    assert_difference('Acabado.count', -1) do
      delete :destroy, id: @acabado
    end

    assert_redirected_to acabados_path
  end
end
