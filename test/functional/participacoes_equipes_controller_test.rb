require 'test_helper'

class ParticipacoesEquipesControllerTest < ActionController::TestCase
  setup do
    @participacao_equipe = participacoes_equipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:participacoes_equipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create participacao_equipe" do
    assert_difference('ParticipacaoEquipe.count') do
      post :create, :participacao_equipe => @participacao_equipe.attributes
    end

    assert_redirected_to participacao_equipe_path(assigns(:participacao_equipe))
  end

  test "should show participacao_equipe" do
    get :show, :id => @participacao_equipe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @participacao_equipe.to_param
    assert_response :success
  end

  test "should update participacao_equipe" do
    put :update, :id => @participacao_equipe.to_param, :participacao_equipe => @participacao_equipe.attributes
    assert_redirected_to participacao_equipe_path(assigns(:participacao_equipe))
  end

  test "should destroy participacao_equipe" do
    assert_difference('ParticipacaoEquipe.count', -1) do
      delete :destroy, :id => @participacao_equipe.to_param
    end

    assert_redirected_to participacoes_equipes_path
  end
end
