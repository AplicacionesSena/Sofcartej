class SofcartejController < ApplicationController
before_filter :require_login, :except => [:inicio]

  def inicio
  	@videos = Video.all
  end

  def sofcartej
  	@clasificaciones = Clasificacione.all
  	@usos = Uso.all
  	@acabados = Acabado.all
  	@bases_telas = BasesTela.all
  	@referencias_comerciales = ReferenciasComerciale.all
  	@proveedores = Proveedore.all
  end
end
