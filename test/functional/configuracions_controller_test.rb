require 'test_helper'

class ConfiguracionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configuracions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configuracion" do
    assert_difference('Configuracion.count') do
      post :create, :configuracion => { }
    end

    assert_redirected_to configuracion_path(assigns(:configuracion))
  end

  test "should show configuracion" do
    get :show, :id => configuracions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => configuracions(:one).to_param
    assert_response :success
  end

  test "should update configuracion" do
    put :update, :id => configuracions(:one).to_param, :configuracion => { }
    assert_redirected_to configuracion_path(assigns(:configuracion))
  end

  test "should destroy configuracion" do
    assert_difference('Configuracion.count', -1) do
      delete :destroy, :id => configuracions(:one).to_param
    end

    assert_redirected_to configuracions_path
  end
end
