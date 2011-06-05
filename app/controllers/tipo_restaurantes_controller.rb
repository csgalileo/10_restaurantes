class TipoRestaurantesController < ApplicationController
before_filter :authenticate_user!

  # GET /tipo_restaurantes
  # GET /tipo_restaurantes.xml
  def index
    @tipo_restaurantes = TipoRestaurante.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_restaurantes }
    end
  end

  # GET /tipo_restaurantes/1
  # GET /tipo_restaurantes/1.xml
  def show
    @tipo_restaurante = TipoRestaurante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_restaurante }
    end
  end

  # GET /tipo_restaurantes/new
  # GET /tipo_restaurantes/new.xml
  def new
    @tipo_restaurante = TipoRestaurante.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_restaurante }
    end
  end

  # GET /tipo_restaurantes/1/edit
  def edit
    @tipo_restaurante = TipoRestaurante.find(params[:id])
  end

  # POST /tipo_restaurantes
  # POST /tipo_restaurantes.xml
  def create
    @tipo_restaurante = TipoRestaurante.new(params[:tipo_restaurante])

    respond_to do |format|
      if @tipo_restaurante.save
        format.html { redirect_to(@tipo_restaurante, :notice => 'Tipo restaurante was successfully created.') }
        format.xml  { render :xml => @tipo_restaurante, :status => :created, :location => @tipo_restaurante }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_restaurante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_restaurantes/1
  # PUT /tipo_restaurantes/1.xml
  def update
    @tipo_restaurante = TipoRestaurante.find(params[:id])

    respond_to do |format|
      if @tipo_restaurante.update_attributes(params[:tipo_restaurante])
        format.html { redirect_to(@tipo_restaurante, :notice => 'Tipo restaurante was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_restaurante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_restaurantes/1
  # DELETE /tipo_restaurantes/1.xml
  def destroy
    @tipo_restaurante = TipoRestaurante.find(params[:id])
    @tipo_restaurante.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_restaurantes_url) }
      format.xml  { head :ok }
    end
  end
end
