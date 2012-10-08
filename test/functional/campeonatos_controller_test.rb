require 'test_helper'

class CampeonatosControllerTest < ActionController::TestCase
  setup do
    @campeonato = campeonatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campeonatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campeonato" do
    assert_difference('Campeonato.count') do
      post :create, :campeonato => @campeonato.attributes
    end

    assert_redirected_to campeonato_path(assigns(:campeonato))
  end

  test "should show campeonato" do
    get :show, :id => @campeonato.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @campeonato.to_param
    assert_response :success
  end

  test "should update campeonato" do
    put :update, :id => @campeonato.to_param, :campeonato => @campeonato.attributes
    assert_redirected_to campeonato_path(assigns(:campeonato))
  end

  test "should destroy campeonato" do
    assert_difference('Campeonato.count', -1) do
      delete :destroy, :id => @campeonato.to_param
    end

    assert_redirected_to campeonatos_path
  end
end
