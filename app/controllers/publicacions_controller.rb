class PublicacionsController < ApplicationController
  # GET /publicacions
  # GET /publicacions.xml
  before_filter :verificar_session
  
  def index
    @publicacions = Publicacion.paginate (:page => @page, :per_page=>5)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @publicacions }
    end
  end

  # GET /publicacions/1
  # GET /publicacions/1.xml
  def show
    @publicacion = Publicacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @publicacion }
    end
  end

  # GET /publicacions/new
  # GET /publicacions/new.xml
  def new
    @publicacion = Publicacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @publicacion }
    end
  end

  # GET /publicacions/1/edit
  def edit
    @publicacion = Publicacion.find(params[:id])
  end

  # POST /publicacions
  # POST /publicacions.xml
  def create
    @publicacion = Publicacion.new(params[:publicacion])

    respond_to do |format|
      if @publicacion.save
        flash[:notice] = 'Publicacion was successfully created.'
        format.html { redirect_to(@publicacion) }
        format.xml  { render :xml => @publicacion, :status => :created, :location => @publicacion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @publicacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /publicacions/1
  # PUT /publicacions/1.xml
  def update
    @publicacion = Publicacion.find(params[:id])

    respond_to do |format|
      if @publicacion.update_attributes(params[:publicacion])
        flash[:notice] = 'Publicacion was successfully updated.'
        format.html { redirect_to(@publicacion) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @publicacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /publicacions/1
  # DELETE /publicacions/1.xml
  def destroy
    @publicacion = Publicacion.find(params[:id])
    @publicacion.destroy

    respond_to do |format|
      format.html { redirect_to(publicacions_url) }
      format.xml  { head :ok }
    end
  end
end
