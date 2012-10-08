require 'test_helper'

class PartidasEquipesControllerTest < ActionController::TestCase
  setup do
    @partida_equipe = partidas_equipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partidas_equipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partida_equipe" do
    assert_difference('PartidaEquipe.count') do
      post :create, :partida_equipe => @partida_equipe.attributes
    end

    assert_redirected_to partida_equipe_path(assigns(:partida_equipe))
  end

  test "should show partida_equipe" do
    get :show, :id => @partida_equipe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @partida_equipe.to_param
    assert_response :success
  end

  test "should update partida_equipe" do
    put :update, :id => @partida_equipe.to_param, :partida_equipe => @partida_equipe.attributes
    assert_redirected_to partida_equipe_path(assigns(:partida_equipe))
  end

  test "should destroy partida_equipe" do
    assert_difference('PartidaEquipe.count', -1) do
      delete :destroy, :id => @partida_equipe.to_param
    end

    assert_redirected_to partidas_equipes_path
  end
end
