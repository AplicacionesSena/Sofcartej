class BasesTela < ActiveRecord::Base
  belongs_to :clasificacione
  has_many :telas
  validates :nombre, presence: true

  	def self.import(file)
      accessible_attributes = ["id", "clasificacione_id", "nombre"]
      ::CSV.foreach(file.path, headers: true) do |row|
        bases_telas = find_by_id(row["id"]) || new
        bases_telas.attributes = row.to_hash.slice(*accessible_attributes)
        bases_telas.save! if bases_telas.id != row["id"] && row["id"] != nil
      end
    end
end
