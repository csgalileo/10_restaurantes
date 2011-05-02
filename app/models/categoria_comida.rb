class CategoriaComida < ActiveRecord::Base
  validates_presence_of :categoria, :descripcion
end
