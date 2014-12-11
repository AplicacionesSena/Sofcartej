class Clasificacione < ActiveRecord::Base
	has_many :bases_telas
  belongs_to :tiposTela
	validates :nombre, presence: true


end
