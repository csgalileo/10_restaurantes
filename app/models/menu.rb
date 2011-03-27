class Menu < ActiveRecord::Base
  belongs_to :restaurante
  belongs_to :comida
  belongs_to :oferta
end
