class RestauranteUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurante
end
