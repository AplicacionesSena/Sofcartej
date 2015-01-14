class Uso < ActiveRecord::Base
	has_many :telas
	validates :nombre, presence: true



   def self.ransackable_attributes(auth_object = nil)
    super - ['id', 'created_at', 'updated_at']
   end
  
  	def self.search(search, page)
		where(['upper(nombre) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 7).order("id")
	end
  
end
