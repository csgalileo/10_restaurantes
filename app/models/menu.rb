class Menu < ActiveRecord::Base
  belongs_to :restaurante
  has_many :comida
  has_many :oferta

  validates_numericality_of :restaurante_id, :comida_id, :oferta_id
  validates_presence_of :restaurante_id

end
