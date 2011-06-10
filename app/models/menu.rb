class Menu < ActiveRecord::Base
  belongs_to :restaurante
  has_many :comida
  has_many :oferta

  validates_numericality_of :restaurante_id, :comida_id, :oferta_id
  validates_presence_of :restaurante_id

  def Menu.new_insert(id_restaurante, id_comida)    
    i = Menu.new :comida_id => id_comida, :restaurante_id => id_restaurante
    i.save
  end

end
