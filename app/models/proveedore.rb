class Proveedore < ActiveRecord::Base
	has_many :telas
	validates :nombre, presence: true
	validates :correo, presence: true

   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :correo, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }

  def self.ransackable_attributes(auth_object = nil)
    super - ['id', 'created_at', 'updated_at']
  end
end
