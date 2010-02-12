class SessionController < ApplicationController

  # Metodo para realizar el login de un usuario
  def new
    @usuario = Usuario.new
    #Aca añadimos un error en el cmpo login
    #@usuario.errors.add(:login , "Nuevo usuario amigo!!!")
  end
  
  # metodo para poder validar al usuario
  def create
    # Buscamos con este metodo mediante el login
    @usuario = Usuario.find_by_login(params[:usuario][:login])
  
    # Verificamos si el password es correcto
    if @usuario and @usuario.pass == params[:usuario][:pass]
      # Mensaje notice que se presentara
      flash[:notice] = "Ha ingresado correctamente"
      # Se almance el id del usuario, tipo y su nombre
      session[:usuario] = {}
      # Se itera a traves de los elementos
      #[:id, :tipo, :nombre].each{ |v| session[:usuario][v] = @usuario[v] }
      [:id, :tipo, :nombre].each{ |v| session[:usuario][v] = @usuario.send(v) }
      # redirecion a la raiz
      redirect_to "/configuracions"
    else
      @usuario = Usuario.new
      # Se adiciona el error a @usuario
      @usuario.errors.add_to_base("Ha ingresado un login o password incorrectos")
      # Presentar la accion :new app/views/session/new.html.erb
      render :action => :new
    end
  end
  
    # Metodo para poder eliminar la sesion del usuario
  def destroy
    # Borrar los elementos de la sesion
    [:id, :tipo, :nombre].each{ |v| session[:usuario].delete(v) }
    # redirecion a la raiz
    redirect_to "/"
  end
end
