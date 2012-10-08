require 'test_helper'

class PontuacoesTorneiosControllerTest < ActionController::TestCase
  setup do
    @pontuacao_torneio = pontuacoes_torneios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pontuacoes_torneios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pontuacao_torneio" do
    assert_difference('PontuacaoTorneio.count') do
      post :create, :pontuacao_torneio => @pontuacao_torneio.attributes
    end

    assert_redirected_to pontuacao_torneio_path(assigns(:pontuacao_torneio))
  end

  test "should show pontuacao_torneio" do
    get :show, :id => @pontuacao_torneio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pontuacao_torneio.to_param
    assert_response :success
  end

  test "should update pontuacao_torneio" do
    put :update, :id => @pontuacao_torneio.to_param, :pontuacao_torneio => @pontuacao_torneio.attributes
    assert_redirected_to pontuacao_torneio_path(assigns(:pontuacao_torneio))
  end

  test "should destroy pontuacao_torneio" do
    assert_difference('PontuacaoTorneio.count', -1) do
      delete :destroy, :id => @pontuacao_torneio.to_param
    end

    assert_redirected_to pontuacoes_torneios_path
  end
end
