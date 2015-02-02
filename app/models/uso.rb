class Uso < ActiveRecord::Base
	has_many :telas
	validates :nombre, presence: true


	
  	def self.search(search, page)
		where(['upper(nombre) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 7).order("id")
	end
  
end
