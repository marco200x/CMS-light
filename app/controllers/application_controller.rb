# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :paginacion
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  protected

  # Metodo que redireciona a la raiz en caso de que el usuario no este logueado
  def verificar_session
    unless session[:usuario][:id] and session[:usuario][:tipo] == 'admin'
      redirect_to "/"
    end
  end
  
  def paginacion 
    @page = 1
    if params[:page]
      @page = params[:page]
    end
  end
  # Metodo para poder crear la paginacion
  #def crear_paginacion
  #  @page = params[:page].nil? ? 1 : params[:page].to_i
  #  @per_page = 3
  #end
end
