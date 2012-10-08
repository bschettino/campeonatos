class PartidasController < ApplicationController
  # GET /partidas
  # GET /partidas.xml
  def index
    @partidas = Partida.all

  end

  # GET /partidas/1
  # GET /partidas/1.xml
  def show
    @partida = Partida.find(params[:id])

  end

  # GET /partidas/new
  # GET /partidas/new.xml
  def new
    @partida = Partida.new
    @jogadores = Jogador.scoped.order("nome")
    @clubes = Clube.scoped.order("nome")
  end

  # GET /partidas/1/edit
  def edit
    @partida = Partida.find(params[:id])
  end

  # POST /partidas
  # POST /partidas.xml
  def create
    @partida = Partida.new(params[:partida])
    p1 = Participacao.por_clube_id(params[:clube_1]).por_jogador_id(params[:jogador_1]).first
    if p1.nil?
      p1 = Participacao.create({:jogador => Jogador.find(params[:jogador_1]), :clube => Clube.find(params[:clube_1])})
      HistoricoJogadorClube.create({:participacao => p1})
      HistoricoJogador.create({:jogador => p1.jogador}) if HistoricoJogador.por_jogador_id(p1.jogador_id).first.nil?
    end

    p2 = Participacao.por_clube_id(params[:clube_2]).por_jogador_id(params[:jogador_2]).first
    if p2.nil?
      p2 = Participacao.create({:jogador => Jogador.find(params[:jogador_2]), :clube => Clube.find(params[:clube_2])})
      HistoricoJogadorClube.create({:participacao => p2})
      HistoricoJogador.create({:jogador => p2.jogador}) if HistoricoJogador.por_jogador_id(p2.jogador_id).first.nil?
    end
    
    @partida.participacao_1 = p1
    @partida.participacao_2 = p2

    if @partida.save
      redirect_to(@partida, :notice => 'Partida foi cadastrada com sucesso.')
    else
      render :action => "new"
    end
  end

  # PUT /partidas/1
  # PUT /partidas/1.xml
  def update
    @partida = Partida.find(params[:id])

    if @partida.update_attributes(params[:partida])
      redirect_to(@partida, :notice => 'Partida was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /partidas/1
  # DELETE /partidas/1.xml
  def destroy
    @partida = Partida.find(params[:id])
    @partida.destroy

  end
end
