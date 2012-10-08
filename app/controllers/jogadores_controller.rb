class JogadoresController < ApplicationController

  skip_before_filter :usuario_requerido, :only => ['new', 'create']
  
  def index
    @jogadores = Jogador.all
  end
  
  def new
    @jogador = Jogador.new
  end
  
  def mostrar
    @jogador = Jogador.find(params[:id])
    @historico = HistoricoJogador.por_jogador_id(params[:id]).first
  end

  def create
    @jogador = Jogador.new(params[:jogador])
    puts "params #{params.inspect}"
    puts "params[:jogador] #{params[:jogador].inspect}"
    puts "@jogador #{@jogador.inspect}"
    if @jogador.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
  def edit
    
  end
  
  def editar
    @jogador = Jogador.find(params[:id])
  end

  def update
    @jogador = Jogador.find(params[:id])

    respond_to do |format|
      if @jogador.update_attributes(params[:jogador])
        format.html { redirect_to(@jogador, :notice => 'Jogador foi atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @jogador.errors, :status => :unprocessable_entity }
      end
    end

  end
  
end
