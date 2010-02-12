class ConfiguracionsController < ApplicationController
  # GET /configuracions
  # GET /configuracions.xml
  before_filter :verificar_session
  
  def index
    @configuracions = Configuracion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @configuracions }
    end
  end

  # GET /configuracions/1
  # GET /configuracions/1.xml
  def show
    @configuracion = Configuracion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @configuracion }
    end
  end

  # GET /configuracions/new
  # GET /configuracions/new.xml
  def new
    @configuracion = Configuracion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @configuracion }
    end
  end

  # GET /configuracions/1/edit
  def edit
    @configuracion = Configuracion.find(params[:id])
  end

  # POST /configuracions
  # POST /configuracions.xml
  def create
    @configuracion = Configuracion.new(params[:configuracion])

    respond_to do |format|
      if @configuracion.save
        flash[:notice] = 'Configuracion was successfully created.'
        format.html { redirect_to(@configuracion) }
        format.xml  { render :xml => @configuracion, :status => :created, :location => @configuracion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @configuracion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /configuracions/1
  # PUT /configuracions/1.xml
  def update
    @configuracion = Configuracion.find(params[:id])

    respond_to do |format|
      if @configuracion.update_attributes(params[:configuracion])
        flash[:notice] = 'Configuracion was successfully updated.'
        format.html { redirect_to(@configuracion) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @configuracion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /configuracions/1
  # DELETE /configuracions/1.xml
  def destroy
    @configuracion = Configuracion.find(params[:id])
    @configuracion.destroy

    respond_to do |format|
      format.html { redirect_to(configuracions_url) }
      format.xml  { head :ok }
    end
  end
end
