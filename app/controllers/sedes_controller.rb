class SedesController < ApplicationController
before_filter :authenticate_user!, :except => [:show, :index]

  # GET /sedes
  # GET /sedes.xml
  def index
    @sedes = Sede.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sedes }
    end
  end

  # GET /sedes/1
  # GET /sedes/1.xml
  def show
    @sede = Sede.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sede }
    end
  end

  # GET /sedes/new
  # GET /sedes/new.xml
  def new
    @sede = Sede.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sede }
    end
  end

  # GET /sedes/1/edit
  def edit
    @sede = Sede.find(params[:id])
  end

  # POST /sedes
  # POST /sedes.xml
  def create
    @sede = Sede.new(params[:sede])

    respond_to do |format|
      if @sede.save
        format.html { redirect_to(@sede, :notice => 'Sede was successfully created.') }
        format.xml  { render :xml => @sede, :status => :created, :location => @sede }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sede.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sedes/1
  # PUT /sedes/1.xml
  def update
    @sede = Sede.find(params[:id])

    respond_to do |format|
      if @sede.update_attributes(params[:sede])
        format.html { redirect_to(@sede, :notice => 'Sede was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sede.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sedes/1
  # DELETE /sedes/1.xml
  def destroy
    @sede = Sede.find(params[:id])
    @sede.destroy

    respond_to do |format|
      format.html { redirect_to(sedes_url) }
      format.xml  { head :ok }
    end
  end
end
