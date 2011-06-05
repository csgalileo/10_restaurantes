class OfertasController < ApplicationController
before_filter :authenticate_user!

  # GET /ofertas
  # GET /ofertas.xml
  def index
    @ofertas = Oferta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ofertas }
    end
  end

  # GET /ofertas/1
  # GET /ofertas/1.xml
  def show
    @oferta = Oferta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @oferta }
    end
  end

  # GET /ofertas/new
  # GET /ofertas/new.xml
  def new
    @oferta = Oferta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @oferta }
    end
  end

  # GET /ofertas/1/edit
  def edit
    @oferta = Oferta.find(params[:id])
  end

  # POST /ofertas
  # POST /ofertas.xml
  def create
    @oferta = Oferta.new(params[:oferta])

    respond_to do |format|
      if @oferta.save
        format.html { redirect_to(@oferta, :notice => 'Oferta was successfully created.') }
        format.xml  { render :xml => @oferta, :status => :created, :location => @oferta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @oferta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ofertas/1
  # PUT /ofertas/1.xml
  def update
    @oferta = Oferta.find(params[:id])

    respond_to do |format|
      if @oferta.update_attributes(params[:oferta])
        format.html { redirect_to(@oferta, :notice => 'Oferta was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @oferta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ofertas/1
  # DELETE /ofertas/1.xml
  def destroy
    @oferta = Oferta.find(params[:id])
    @oferta.destroy

    respond_to do |format|
      format.html { redirect_to(ofertas_url) }
      format.xml  { head :ok }
    end
  end
end
