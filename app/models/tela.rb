class Tela < ActiveRecord::Base
  # attr_accessible :nombre, :tiposTela, :basesTela, :proveedore, :referenciasComerciale, :composicion, :anchoOrillo, :uso, :acabado, :peso, :pesoUnidad, :fichaTecnica, :document

  belongs_to :tiposTela
  belongs_to :basesTela
  belongs_to :proveedore
  belongs_to :referenciasComerciale
  belongs_to :uso
  belongs_to :acabado
  has_many :images, :dependent => :destroy

  has_attached_file :document
  # do_not_validate_attachment_file_type :document
	 
   validates_attachment_size :document, :less_than => 10.megabytes    
    validates_attachment_presence :document 
     validates_attachment_content_type :document, :content_type =>['application/pdf'],
                                                       :message => ', Solo se permiten archivos pdf. '
def self.search(search, page)
  where(['nombre LIKE :s OR composicion LIKE :s OR peso LIKE :s', :s => 
    "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
end


end
