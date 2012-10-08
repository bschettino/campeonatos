class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user
  
#  before_filter :usuario_requerido
  
  private

  def current_user
    @current_user ||= Jogador.find(session[:user_id]) if session[:user_id]
  end
  
  def usuario_requerido
    unless session[:user_id]
      redirect_to log_in_path and return false
    else
      return true
    end
  end

end
