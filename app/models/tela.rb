class Tela < ActiveRecord::Base
  belongs_to :tiposTela
  belongs_to :basesTela
  belongs_to :proveedore
  belongs_to :referenciasComerciale
  belongs_to :uso
  belongs_to :acabado
end
