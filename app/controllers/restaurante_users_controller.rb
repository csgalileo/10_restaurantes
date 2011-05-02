class RestauranteUsersController < ApplicationController
  # GET /restaurante_users
  # GET /restaurante_users.xml
  def index
    @restaurante_users = RestauranteUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @restaurante_users }
    end
  end

  # GET /restaurante_users/1
  # GET /restaurante_users/1.xml
  def show
    @restaurante_user = RestauranteUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @restaurante_user }
    end
  end

  # GET /restaurante_users/new
  # GET /restaurante_users/new.xml
  def new
    @restaurante_user = RestauranteUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @restaurante_user }
    end
  end

  # GET /restaurante_users/1/edit
  def edit
    @restaurante_user = RestauranteUser.find(params[:id])
  end

  # POST /restaurante_users
  # POST /restaurante_users.xml
  def create
    @restaurante_user = RestauranteUser.new(params[:restaurante_user])

    respond_to do |format|
      if @restaurante_user.save
        format.html { redirect_to(@restaurante_user, :notice => 'Restaurante user was successfully created.') }
        format.xml  { render :xml => @restaurante_user, :status => :created, :location => @restaurante_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @restaurante_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /restaurante_users/1
  # PUT /restaurante_users/1.xml
  def update
    @restaurante_user = RestauranteUser.find(params[:id])

    respond_to do |format|
      if @restaurante_user.update_attributes(params[:restaurante_user])
        format.html { redirect_to(@restaurante_user, :notice => 'Restaurante user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @restaurante_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurante_users/1
  # DELETE /restaurante_users/1.xml
  def destroy
    @restaurante_user = RestauranteUser.find(params[:id])
    @restaurante_user.destroy

    respond_to do |format|
      format.html { redirect_to(restaurante_users_url) }
      format.xml  { head :ok }
    end
  end
end
