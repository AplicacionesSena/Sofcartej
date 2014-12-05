require 'test_helper'

class ClasificacionesControllerTest < ActionController::TestCase
  setup do
    @clasificacione = clasificaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clasificaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clasificacione" do
    assert_difference('Clasificacione.count') do
      post :create, clasificacione: { descripcion: @clasificacione.descripcion, nombre: @clasificacione.nombre }
    end

    assert_redirected_to clasificacione_path(assigns(:clasificacione))
  end

  test "should show clasificacione" do
    get :show, id: @clasificacione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clasificacione
    assert_response :success
  end

  test "should update clasificacione" do
    patch :update, id: @clasificacione, clasificacione: { descripcion: @clasificacione.descripcion, nombre: @clasificacione.nombre }
    assert_redirected_to clasificacione_path(assigns(:clasificacione))
  end

  test "should destroy clasificacione" do
    assert_difference('Clasificacione.count', -1) do
      delete :destroy, id: @clasificacione
    end

    assert_redirected_to clasificaciones_path
  end
end
