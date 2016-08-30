require 'test_helper'

class BeneficiariosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get nuevo" do
    get :nuevo
    assert_response :success
  end

  test "should get editar" do
    get :editar
    assert_response :success
  end

  test "should get eliminar" do
    get :eliminar
    assert_response :success
  end

  test "should get mostrar" do
    get :mostrar
    assert_response :success
  end

end
