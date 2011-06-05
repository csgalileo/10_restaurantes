class ComidasController < ApplicationController
before_filter :authenticate_user!

  # GET /comidas
  # GET /comidas.xml
  def index
    @comidas = Comida.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comidas }
    end
  end

  # GET /comidas/1
  # GET /comidas/1.xml
  def show
    @comida = Comida.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comida }
    end
  end

  # GET /comidas/new
  # GET /comidas/new.xml
  def new
    @comida = Comida.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comida }
    end
  end

  # GET /comidas/1/edit
  def edit
    @comida = Comida.find(params[:id])
  end

  # POST /comidas
  # POST /comidas.xml
  def create
    @comida = Comida.new(params[:comida])

    respond_to do |format|
      if @comida.save
        format.html { redirect_to(@comida, :notice => 'Comida was successfully created.') }
        format.xml  { render :xml => @comida, :status => :created, :location => @comida }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comida.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comidas/1
  # PUT /comidas/1.xml
  def update
    @comida = Comida.find(params[:id])

    respond_to do |format|
      if @comida.update_attributes(params[:comida])
        format.html { redirect_to(@comida, :notice => 'Comida was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comida.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comidas/1
  # DELETE /comidas/1.xml
  def destroy
    @comida = Comida.find(params[:id])
    @comida.destroy

    respond_to do |format|
      format.html { redirect_to(comidas_url) }
      format.xml  { head :ok }
    end
  end
end
