class AcabadosController < ApplicationController
  before_action :set_acabado, only: [:show, :edit, :update, :destroy]

  # GET /acabados
  # GET /acabados.json
  def index
    @acabados = Acabado.search(params[:search], params[:page])
  end



  # GET /acabados/1
  # GET /acabados/1.json
  def show
  end

  # GET /acabados/new
  def new
    @acabado = Acabado.new
  end

  # GET /acabados/1/edit
  def edit
  end

  # POST /acabados
  # POST /acabados.json
  def create
    @acabado = Acabado.new(acabado_params)
    render action: :new unless @acabado.save
  end

  # PATCH/PUT /acabados/1
  # PATCH/PUT /acabados/1.json
  def update
    render action: :edit unless @acabado.update_attributes(acabado_params)
  end

  # DELETE /acabados/1
  # DELETE /acabados/1.json
  def destroy
    @acabado.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acabado
      @acabado = Acabado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acabado_params
      params.require(:acabado).permit(:nombre)
    end
end
