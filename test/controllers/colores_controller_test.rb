require 'test_helper'

class ColoresControllerTest < ActionController::TestCase
  setup do
    @colore = colores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:colores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create colore" do
    assert_difference('Colore.count') do
      post :create, colore: { cantidadActual: @colore.cantidadActual, entrada: @colore.entrada, salida: @colore.salida, tela_id: @colore.tela_id }
    end

    assert_redirected_to colore_path(assigns(:colore))
  end

  test "should show colore" do
    get :show, id: @colore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @colore
    assert_response :success
  end

  test "should update colore" do
    patch :update, id: @colore, colore: { cantidadActual: @colore.cantidadActual, entrada: @colore.entrada, salida: @colore.salida, tela_id: @colore.tela_id }
    assert_redirected_to colore_path(assigns(:colore))
  end

  test "should destroy colore" do
    assert_difference('Colore.count', -1) do
      delete :destroy, id: @colore
    end

    assert_redirected_to colores_path
  end
end
