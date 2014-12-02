class Acabado < ActiveRecord::Base
	has_many :telas
	validates :nombre, presence: true

	def self.import(file)
      accessible_attributes = ["id", "nombre"]
      ::CSV.foreach(file.path, headers: true) do |row|
        acabados = find_by_id(row["id"]) || new
        acabados.attributes = row.to_hash.slice(*accessible_attributes)
        acabados.save! if acabados.id != row["id"] && row["id"] != nil
      end
    end 
end
