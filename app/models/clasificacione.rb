class Clasificacione < ActiveRecord::Base
	has_many :bases_telas
	validates :nombre, presence: true
end
