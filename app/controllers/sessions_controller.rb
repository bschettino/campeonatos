class SessionsController < ApplicationController
skip_before_filter :usuario_requerido, :only => ['new', 'create']
  
def new
end

def create
  user = Jogador.authenticate(params[:login], params[:password])
  if user
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Logado!"
  else
    flash.now.alert = "Login ou senha inválida."
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Deslogado!"
end



  
end
