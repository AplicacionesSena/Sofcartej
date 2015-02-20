class Colore < ActiveRecord::Base
  belongs_to :tela
  
   validates :cantidadActual, presence: true
   validates :color, presence: true
   validates :cantidadActual, :numericality => { :greater_than_or_equal_to => 0 }
   validates :entrada, :numericality => { :greater_than_or_equal_to => 0 }
   validates :salida, :numericality => { :greater_than_or_equal_to => 0 }
end
