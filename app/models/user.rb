class User < ActiveRecord::Base
	authenticates_with_sorcery!
	validates :password, length: { minimum: 3 }
    validates :password, confirmation: true
    validates :password_confirmation, presence: true
    validates :nombre, presence: true
    validates :email, uniqueness: true
    validates :email, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
    validates :nombre, length: { in: 4..15 }

    has_attached_file :foto, :default_url => "/users"
  	do_not_validate_attachment_file_type :foto

  	def self.search(search, page)
	  where(['nombre LIKE :s OR email LIKE :s', :s => 
	    "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
	end
end
