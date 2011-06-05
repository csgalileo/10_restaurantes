class CategoriaComidasController < ApplicationController
before_filter :authenticate_user!

  # GET /categoria_comidas
  # GET /categoria_comidas.xml
  def index
    @categoria_comidas = CategoriaComida.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categoria_comidas }
    end
  end

  # GET /categoria_comidas/1
  # GET /categoria_comidas/1.xml
  def show
    @categoria_comida = CategoriaComida.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @categoria_comida }
    end
  end

  # GET /categoria_comidas/new
  # GET /categoria_comidas/new.xml
  def new
    @categoria_comida = CategoriaComida.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @categoria_comida }
    end
  end

  # GET /categoria_comidas/1/edit
  def edit
    @categoria_comida = CategoriaComida.find(params[:id])
  end

  # POST /categoria_comidas
  # POST /categoria_comidas.xml
  def create
    @categoria_comida = CategoriaComida.new(params[:categoria_comida])

    respond_to do |format|
      if @categoria_comida.save
        format.html { redirect_to(@categoria_comida, :notice => 'Categoria comida was successfully created.') }
        format.xml  { render :xml => @categoria_comida, :status => :created, :location => @categoria_comida }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @categoria_comida.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categoria_comidas/1
  # PUT /categoria_comidas/1.xml
  def update
    @categoria_comida = CategoriaComida.find(params[:id])

    respond_to do |format|
      if @categoria_comida.update_attributes(params[:categoria_comida])
        format.html { redirect_to(@categoria_comida, :notice => 'Categoria comida was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @categoria_comida.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_comidas/1
  # DELETE /categoria_comidas/1.xml
  def destroy
    @categoria_comida = CategoriaComida.find(params[:id])
    @categoria_comida.destroy

    respond_to do |format|
      format.html { redirect_to(categoria_comidas_url) }
      format.xml  { head :ok }
    end
  end
end
