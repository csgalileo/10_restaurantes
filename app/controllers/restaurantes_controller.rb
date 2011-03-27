class RestaurantesController < ApplicationController
  # GET /restaurantes
  # GET /restaurantes.xml
  def index
    @restaurantes = Restaurante.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @restaurantes }
    end
  end

  # GET /restaurantes/1
  # GET /restaurantes/1.xml
  def show
    @restaurante = Restaurante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @restaurante }
    end
  end

  # GET /restaurantes/new
  # GET /restaurantes/new.xml
  def new
    @restaurante = Restaurante.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @restaurante }
    end
  end

  # GET /restaurantes/1/edit
  def edit
    @restaurante = Restaurante.find(params[:id])
  end

  # POST /restaurantes
  # POST /restaurantes.xml
  def create
    @restaurante = Restaurante.new(params[:restaurante])

    respond_to do |format|
      if @restaurante.save
        format.html { redirect_to(@restaurante, :notice => 'Restaurante was successfully created.') }
        format.xml  { render :xml => @restaurante, :status => :created, :location => @restaurante }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @restaurante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /restaurantes/1
  # PUT /restaurantes/1.xml
  def update
    @restaurante = Restaurante.find(params[:id])

    respond_to do |format|
      if @restaurante.update_attributes(params[:restaurante])
        format.html { redirect_to(@restaurante, :notice => 'Restaurante was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @restaurante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurantes/1
  # DELETE /restaurantes/1.xml
  def destroy
    @restaurante = Restaurante.find(params[:id])
    @restaurante.destroy

    respond_to do |format|
      format.html { redirect_to(restaurantes_url) }
      format.xml  { head :ok }
    end
  end
end
