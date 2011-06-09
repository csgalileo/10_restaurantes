class MobileController < ApplicationController

  def index
    @tipos_de_restaurantes = TiposDeRestaurante.all
    @ofertas = Oferta.all
    @restaurantes = Restaurante.all
    @categoria_comidas = CategoriaComida.all
    @comidas = Comida.all

    
  end

  def comidas
    @comidas = Comida.find(params[:id])
  end


end
