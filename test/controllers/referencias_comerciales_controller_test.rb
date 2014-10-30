require 'test_helper'

class ReferenciasComercialesControllerTest < ActionController::TestCase
  setup do
    @referencias_comerciale = referencias_comerciales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referencias_comerciales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referencias_comerciale" do
    assert_difference('ReferenciasComerciale.count') do
      post :create, referencias_comerciale: { nombre: @referencias_comerciale.nombre }
    end

    assert_redirected_to referencias_comerciale_path(assigns(:referencias_comerciale))
  end

  test "should show referencias_comerciale" do
    get :show, id: @referencias_comerciale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referencias_comerciale
    assert_response :success
  end

  test "should update referencias_comerciale" do
    patch :update, id: @referencias_comerciale, referencias_comerciale: { nombre: @referencias_comerciale.nombre }
    assert_redirected_to referencias_comerciale_path(assigns(:referencias_comerciale))
  end

  test "should destroy referencias_comerciale" do
    assert_difference('ReferenciasComerciale.count', -1) do
      delete :destroy, id: @referencias_comerciale
    end

    assert_redirected_to referencias_comerciales_path
  end
end
