class ParticipacoesController < ApplicationController
  def index
    @participacoes = Participacao.all

  end

  def show
    @participacao = Participacao.find(params[:id])
    @historico = @participacao.historico_jogador_clube
  end
  
end