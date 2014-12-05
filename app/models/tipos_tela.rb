class TiposTela < ActiveRecord::Base
	has_many :telas
	

  def self.import(file)
      accessible_attributes = ["id", "nombre"]
      ::CSV.foreach(file.path, headers: true) do |row|
        tipos_telas = find_by_id(row["id"]) || new
        tipos_telas.attributes = row.to_hash.slice(*accessible_attributes)
        tipos_telas.save! if tipos_telas.id != row["id"] && row["id"] != nil
      end
  end 
end
