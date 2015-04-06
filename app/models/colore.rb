class Colore < ActiveRecord::Base
  belongs_to :tela
   validates :img, presence: true
   validates :cantidadActual, presence: true
   validates :color, presence: true
   validates :cantidadActual, :numericality => { :greater_than_or_equal_to => 0 }
   validates :entrada, :numericality => { :greater_than_or_equal_to => 0 }
   validates :salida, :numericality => { :greater_than_or_equal_to => 0 }
   has_attached_file :img
  do_not_validate_attachment_file_type :img
end
