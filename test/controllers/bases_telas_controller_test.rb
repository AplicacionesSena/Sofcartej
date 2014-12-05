require 'test_helper'

class BasesTelasControllerTest < ActionController::TestCase
  setup do
    @bases_tela = bases_telas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bases_telas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bases_tela" do
    assert_difference('BasesTela.count') do
      post :create, bases_tela: { clasificacione_id: @bases_tela.clasificacione_id, nombre: @bases_tela.nombre }
    end

    assert_redirected_to bases_tela_path(assigns(:bases_tela))
  end

  test "should show bases_tela" do
    get :show, id: @bases_tela
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bases_tela
    assert_response :success
  end

  test "should update bases_tela" do
    patch :update, id: @bases_tela, bases_tela: { clasificacione_id: @bases_tela.clasificacione_id, nombre: @bases_tela.nombre }
    assert_redirected_to bases_tela_path(assigns(:bases_tela))
  end

  test "should destroy bases_tela" do
    assert_difference('BasesTela.count', -1) do
      delete :destroy, id: @bases_tela
    end

    assert_redirected_to bases_telas_path
  end
end
