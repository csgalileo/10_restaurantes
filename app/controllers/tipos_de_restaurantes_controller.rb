class TiposDeRestaurantesController < ApplicationController
  # GET /tipos_de_restaurantes
  # GET /tipos_de_restaurantes.xml
  def index
    @tipos_de_restaurantes = TiposDeRestaurante.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipos_de_restaurantes }
    end
  end

  # GET /tipos_de_restaurantes/1
  # GET /tipos_de_restaurantes/1.xml
  def show
    @tipos_de_restaurante = TiposDeRestaurante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipos_de_restaurante }
    end
  end

  # GET /tipos_de_restaurantes/new
  # GET /tipos_de_restaurantes/new.xml
  def new
    @tipos_de_restaurante = TiposDeRestaurante.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipos_de_restaurante }
    end
  end

  # GET /tipos_de_restaurantes/1/edit
  def edit
    @tipos_de_restaurante = TiposDeRestaurante.find(params[:id])
  end

  # POST /tipos_de_restaurantes
  # POST /tipos_de_restaurantes.xml
  def create
    @tipos_de_restaurante = TiposDeRestaurante.new(params[:tipos_de_restaurante])

    respond_to do |format|
      if @tipos_de_restaurante.save
        format.html { redirect_to(@tipos_de_restaurante, :notice => 'Tipos de restaurante was successfully created.') }
        format.xml  { render :xml => @tipos_de_restaurante, :status => :created, :location => @tipos_de_restaurante }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipos_de_restaurante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipos_de_restaurantes/1
  # PUT /tipos_de_restaurantes/1.xml
  def update
    @tipos_de_restaurante = TiposDeRestaurante.find(params[:id])

    respond_to do |format|
      if @tipos_de_restaurante.update_attributes(params[:tipos_de_restaurante])
        format.html { redirect_to(@tipos_de_restaurante, :notice => 'Tipos de restaurante was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipos_de_restaurante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_de_restaurantes/1
  # DELETE /tipos_de_restaurantes/1.xml
  def destroy
    @tipos_de_restaurante = TiposDeRestaurante.find(params[:id])
    @tipos_de_restaurante.destroy

    respond_to do |format|
      format.html { redirect_to(tipos_de_restaurantes_url) }
      format.xml  { head :ok }
    end
  end
end
