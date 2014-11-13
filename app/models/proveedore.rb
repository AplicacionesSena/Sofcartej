class Proveedore < ActiveRecord::Base
	has_many :telas
	validates :nombre, presence: true
	validates :correo, presence: true
end
