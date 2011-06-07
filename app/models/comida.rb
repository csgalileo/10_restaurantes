class Comida < ActiveRecord::Base

  validates_presence_of :nombre, :descripcion, :precio
  validates_numericality_of :precio, :greater_than => 0.01
  validates_numericality_of :status
#  validates_format_of :imagen, :with => %r{\.(gif|jpg|png)$}i

has_attached_file :photo, :url => "/images/comidas/:id/:basename.:extension", :path => ":rails_root/public/images/comidas/:id/:basename.:extension"
          
validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

end
