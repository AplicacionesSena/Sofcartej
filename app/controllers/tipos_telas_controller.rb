class TiposTelasController < ApplicationController
  before_action :set_tipos_tela, only: [:show, :edit, :update, :destroy]

  # GET /tipos_telas
  # GET /tipos_telas.json
  def index
    @tipos_telas = TiposTela.all
  end
  
  def import
    TiposTela.import(params[:file])
    redirect_to controller: "sofcartej", action: "importar"
  end

  # GET /tipos_telas/1
  # GET /tipos_telas/1.json
  def show
  end

  # GET /tipos_telas/new
  def new
    @tipos_tela = TiposTela.new
  end

  # GET /tipos_telas/1/edit
  def edit
  end
  #TiposTela.import(params[:file])
  # POST /tipos_telas
  # POST /tipos_telas.json
  def create
    @tipos_tela = TiposTela.new(tipos_tela_params)
   render action: :new unless @tipos_tela.save

  end

  # PATCH/PUT /tipos_telas/1
  # PATCH/PUT /tipos_telas/1.json
  def update
    render action: :edit unless @tipos_tela.update_attributes(tipos_tela_params)
  end

  # DELETE /tipos_telas/1
  # DELETE /tipos_telas/1.json
  def destroy
    @tipos_tela.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipos_tela
      @tipos_tela = TiposTela.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipos_tela_params
      params.require(:tipos_tela).permit(:nombre)
    end
end
