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
	
  #def self.pagi(page)
  #  order('nombre').paginate(page: page, per_page: 10)
  #end
  
  def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |tela|
	      csv << tela.attributes.values_at(*column_names)
	    end
	  end
	end

end
