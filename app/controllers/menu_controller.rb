class MenuController < ApplicationController

  def index
    @ru = RestauranteUsers.find_by_user_id(current_user.id).restaurante_id

  end

end
