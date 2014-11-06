class TelasController < ApplicationController
  before_action :set_tela, only: [:show, :edit, :update, :destroy]

  # GET /telas
  # GET /telas.json
  def index
    @telas = Tela.search(params[:search], params[:page])
  end

  # GET /telas/1
  # GET /telas/1.json
  def show
  end

  # GET /telas/new
  def new
    @tela = Tela.new
  end

  # GET /telas/1/edit
  def edit
  end

  # POST /telas
  # POST /telas.json
  def create
    @tela = Tela.new(tela_params)
    render action: :new unless @tela.save

  end

  # PATCH/PUT /telas/1
  # PATCH/PUT /telas/1.json
  def update
    render action: :edit unless @tela.update_attributes(tela_params)
  end

  # DELETE /telas/1
  # DELETE /telas/1.json
  def destroy
    @tela.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tela
      @tela = Tela.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tela_params
      params.require(:tela).permit(:nombre, :tiposTela_id, :basesTela_id, :proveedore_id, :referenciasComerciale_id, :composicion, :anchoOrillo, :uso_id, :acabado_id, :peso, :pesoUnidad, :fichaTecnica, :document)
    end
end
