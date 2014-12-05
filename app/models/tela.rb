class Tela < ActiveRecord::Base
  # attr_accessible :nombre, :tiposTela, :basesTela, :proveedore, :referenciasComerciale, :composicion, :anchoOrillo, :uso, :acabado, :peso, :pesoUnidad, :fichaTecnica, :document
  validates :nombre, presence: true
  validates :tiposTela, presence: true
  validates :basesTela, presence: true
  validates :proveedore, presence: true
  validates :referenciasComerciale, presence: true
  validates :composicion, presence: true
  validates :anchoOrillo, presence: true
  validates :uso, presence: true
  validates :acabado, presence: true
  validates :peso, presence: true
  validates :pesoUnidad, presence: true

  belongs_to :tiposTela
  belongs_to :basesTela
  belongs_to :proveedore
  belongs_to :referenciasComerciale
  belongs_to :uso
  belongs_to :acabado
  has_many :images, :dependent => :destroy

  has_attached_file :document, :default_url => "/telas"
  do_not_validate_attachment_file_type :document
	 
def self.search(search, page)
  where(['nombre LIKE :s OR composicion LIKE :s OR peso LIKE :s', :s => 
    "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
end

  def self.import(file)
      accessible_attributes = ["id", "nombre", "tiposTela_id", "basesTela_id", "proveedore_id", "referenciasComerciale_id", "composicion", "anchoOrillo", "uso_id", "acabado_id", "peso", "pesoUnidad", "datos"]
      ::CSV.foreach(file.path, headers: true) do |row|
        telas = find_by_id(row["id"]) || new
        telas.attributes = row.to_hash.slice(*accessible_attributes)
        telas.save! if telas.id != row["id"] && row["id"] != nil
      end
  end


end
