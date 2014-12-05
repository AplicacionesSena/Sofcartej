class Proveedore < ActiveRecord::Base
	has_many :telas
	validates :nombre, presence: true
	validates :correo, presence: true

	def self.import(file)
      accessible_attributes = ["id", "nombre", "telefono", "direccion", "correo"]
      ::CSV.foreach(file.path, headers: true) do |row|
        proveedores = find_by_id(row["id"]) || new
        proveedores.attributes = row.to_hash.slice(*accessible_attributes)
        proveedores.save! if proveedores.id != row["id"] && row["id"] != nil
      end
    end
end
