class AvisosController < ApplicationController
  # GET /avisos
  # GET /avisos.xml
  before_filter :verificar_session
  
  def index
    @avisos = Aviso.paginate (:page => @page, :per_page=>5)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @avisos }
    end
  end

  # GET /avisos/1
  # GET /avisos/1.xml
  def show
    @aviso = Aviso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aviso }
    end
  end

  # GET /avisos/new
  # GET /avisos/new.xml
  def new
    @aviso = Aviso.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aviso }
    end
  end

  # GET /avisos/1/edit
  def edit
    @aviso = Aviso.find(params[:id])
  end

  # POST /avisos
  # POST /avisos.xml
  def create
    @aviso = Aviso.new(params[:aviso])

    respond_to do |format|
      if @aviso.save
        flash[:notice] = 'Aviso was successfully created.'
        format.html { redirect_to(@aviso) }
        format.xml  { render :xml => @aviso, :status => :created, :location => @aviso }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aviso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /avisos/1
  # PUT /avisos/1.xml
  def update
    @aviso = Aviso.find(params[:id])

    respond_to do |format|
      if @aviso.update_attributes(params[:aviso])
        flash[:notice] = 'Aviso was successfully updated.'
        format.html { redirect_to(@aviso) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aviso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /avisos/1
  # DELETE /avisos/1.xml
  def destroy
    @aviso = Aviso.find(params[:id])
    @aviso.destroy

    respond_to do |format|
      format.html { redirect_to(avisos_url) }
      format.xml  { head :ok }
    end
  end
end
