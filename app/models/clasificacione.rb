class Clasificacione < ActiveRecord::Base
	has_many :bases_telas
  belongs_to :tiposTela
	validates :nombre, presence: true

	def self.import(file)
      accessible_attributes = ["id", "nombre", "descripcion"]
      ::CSV.foreach(file.path, headers: true) do |row|
        clasificaciones = find_by_id(row["id"]) || new
        clasificaciones.attributes = row.to_hash.slice(*accessible_attributes)
        clasificaciones.save! if clasificaciones.id != row["id"] && row["id"] != nil
      end
    end
end
