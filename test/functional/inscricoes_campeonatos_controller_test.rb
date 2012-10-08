require 'test_helper'

class InscricoesCampeonatosControllerTest < ActionController::TestCase
  setup do
    @inscricao_campeonato = inscricoes_campeonatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inscricoes_campeonatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inscricao_campeonato" do
    assert_difference('InscricaoCampeonato.count') do
      post :create, :inscricao_campeonato => @inscricao_campeonato.attributes
    end

    assert_redirected_to inscricao_campeonato_path(assigns(:inscricao_campeonato))
  end

  test "should show inscricao_campeonato" do
    get :show, :id => @inscricao_campeonato.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inscricao_campeonato.to_param
    assert_response :success
  end

  test "should update inscricao_campeonato" do
    put :update, :id => @inscricao_campeonato.to_param, :inscricao_campeonato => @inscricao_campeonato.attributes
    assert_redirected_to inscricao_campeonato_path(assigns(:inscricao_campeonato))
  end

  test "should destroy inscricao_campeonato" do
    assert_difference('InscricaoCampeonato.count', -1) do
      delete :destroy, :id => @inscricao_campeonato.to_param
    end

    assert_redirected_to inscricoes_campeonatos_path
  end
end
