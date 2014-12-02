class PruebaImportsController < ApplicationController
  def new
    @prueba_import = PruebaImport.new
  end

  def create
    @prueba_import = PruebaImport.new(params[:prueba_import])
    if @prueba_import.save
      redirect_to root_url, notice: "Importados."
    else
      render :new
    end
  end
end

