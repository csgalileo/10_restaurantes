class TipoRestaurante < ActiveRecord::Base
  belongs_to :restaurante
  belongs_to :tipos_de_restaurante
end
