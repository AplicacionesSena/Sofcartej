class TiposTela < ActiveRecord::Base
	has_many :telas
	validates :nombre, presence: true
end
