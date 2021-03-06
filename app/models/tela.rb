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

  belongs_to :basesTela
  belongs_to :proveedore
  belongs_to :uso
  belongs_to :acabado
  has_many :images, :dependent => :destroy
  has_many :colores, :dependent => :destroy


  has_attached_file :document, :default_url => "/telas"
  do_not_validate_attachment_file_type :document
	
  def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |tela|
	      csv << tela.attributes.values_at(*column_names)
	    end
	  end
	end
	
	#Metodo para el buscador multiple, los siguietes atributos no seran visibles en la vista del usuario
	#ya que no son necesarios.
	def self.ransackable_attributes(auth_object = nil)
    super - ['id', 'created_at', 'updated_at', 
      'tiposTela_id', 'basesTela_id', 'proveedore_id', 'referenciasComerciale_id',
      'uso_id', 'acabado_id', 'fichaTecnica', 'document_file_name',
      'document_content_type', 'document_file_size', 'document_updated_at', 'datos','clasificacione_id']
  end

end
