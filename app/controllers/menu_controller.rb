class MenuController < ApplicationController

  def index
    @ru = RestauranteUser.find_by_user_id(current_user.id)

   respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ru }
    end

  end

end
