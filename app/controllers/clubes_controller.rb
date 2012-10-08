class ClubesController < ApplicationController
  # GET /clubes
  # GET /clubes.xml
  def index
    @clubes = Clube.all
  end

  # GET /clubes/1
  # GET /clubes/1.xml
  def show
    @clube = Clube.find(params[:id])
  end

  # GET /clubes/new
  # GET /clubes/new.xml
  def new
    @clube = Clube.new
  end

  # GET /clubes/1/edit
  def editar
    @clube = Clube.find(params[:id])
  end

  # POST /clubes
  # POST /clubes.xml
  def create
    @clube = Clube.new(params[:clube])
    if @clube.save
      redirect_to(@clube, :notice => 'O Clube foi cadastrado com sucesso.')
    else
      render :action => "new"
    end
  end

  # PUT /clubes/1
  # PUT /clubes/1.xml
  def update
    @clube = Clube.find(params[:id])

    if @clube.update_attributes(params[:clube])
      redirect_to(@clube, :notice => 'Clube foi alterado com sucesso.')
    else
      render :action => "edit"
    end
  end

  # DELETE /clubes/1
  # DELETE /clubes/1.xml
  def destroy
    @clube = Clube.find(params[:id])
    @clube.destroy
    redirect_to(clubes_url)
  end
end
