class Tela < ActiveRecord::Base
  # attr_accessible :nombre, :tiposTela, :basesTela, :proveedore, :referenciasComerciale, :composicion, :anchoOrillo, :uso, :acabado, :peso, :pesoUnidad, :fichaTecnica, :document

  validates :nombre, presence: true
  validates :codigo, presence: true
  validates :composicion, presence: true
  validates :basesTela, presence: true
  validates :proveedore, presence: true
  validates :nombrecomercial, presence: true
  validates :anchoOrillo, presence: true
  validates :uso, presence: true
  validates :acabado, presence: true
  validates :pesoUnidad, presence: true
  validates :peso, presence: true
  validates :tejido, presence: true

  belongs_to :tiposTela
  belongs_to :basesTela
  belongs_to :proveedore
  belongs_to :uso
  belongs_to :acabado
  has_many :images, :dependent => :destroy

  has_attached_file :document, :default_url => "/telas"
  do_not_validate_attachment_file_type :document
	

  def self.import(file)
      accessible_attributes = ["id", "nombre", "tiposTela_id", "basesTela_id", "proveedore_id", "referenciasComerciale_id", "composicion", "anchoOrillo", "uso_id", "acabado_id", "peso", "pesoUnidad", "datos"]
      ::CSV.foreach(file.path, headers: true) do |row|
        telas = find_by_id(row["id"]) || new
        telas.attributes = row.to_hash.slice(*accessible_attributes)
        telas.save! if telas.id != row["id"] && row["id"] != nil
      end
  end


end
