class CampeonatosController < ApplicationController
 
  def index
    @campeonatos = Campeonato.all
  end

  # GET /campeonatos/1
  # GET /campeonatos/1.xml
  def show
    @campeonato = Campeonato.find(params[:id])
  end

  # GET /campeonatos/new
  # GET /campeonatos/new.xml
  def new
    @campeonato = Campeonato.new
  end

  # GET /campeonatos/1/edit
  def editar
    @campeonato = Campeonato.find(params[:id])
  end

  # POST /campeonatos
  # POST /campeonatos.xml
  def create
    @campeonato = Campeonato.new(params[:campeonato])
    if @campeonato.save
      redirect_to(@campeonato, :notice => 'O Campeonato foi cadastrado com sucesso.')
    else
      render :action => "new"
    end
  end

  # PUT /campeonatos/1
  # PUT /campeonatos/1.xml
  def update
    @campeonato = Campeonato.find(params[:id])

    if @campeonato.update_attributes(params[:campeonato])
      redirect_to(@campeonato, :notice => 'Campeonato foi alterado com sucesso.')
    else
      render :action => "edit"
    end
  end

  # DELETE /campeonatos/1
  # DELETE /campeonatos/1.xml
  def destroy
    @campeonato = Campeonato.find(params[:id])
    @campeonato.destroy
    redirect_to(campeonatos_url)
  end
end
