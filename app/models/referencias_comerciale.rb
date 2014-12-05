class ReferenciasComerciale < ActiveRecord::Base
	has_many :telas
	validates :nombre, presence: true

	def self.import(file)
      accessible_attributes = ["id", "nombre"]
      ::CSV.foreach(file.path, headers: true) do |row|
        referecias_comerciales = find_by_id(row["id"]) || new
        referecias_comerciales.attributes = row.to_hash.slice(*accessible_attributes)
        referecias_comerciales.save! if referecias_comerciales.id != row["id"] && row["id"] != nil
      end
    end
end
