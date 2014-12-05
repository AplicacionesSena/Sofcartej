class Uso < ActiveRecord::Base
	has_many :telas
	validates :nombre, presence: true

	def self.import(file)
      accessible_attributes = ["id", "nombre"]
      ::CSV.foreach(file.path, headers: true) do |row|
        usos = find_by_id(row["id"]) || new
        usos.attributes = row.to_hash.slice(*accessible_attributes)
        usos.save! if usos.id != row["id"] && row["id"] != nil
      end
    end
end
