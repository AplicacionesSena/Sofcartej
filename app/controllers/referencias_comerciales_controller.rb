class ReferenciasComercialesController < ApplicationController
  before_action :set_referencias_comerciale, only: [:show, :edit, :update, :destroy]

  # GET /referencias_comerciales
  # GET /referencias_comerciales.json
  def index
    @referencias_comerciales = ReferenciasComerciale.all
  end

  # GET /referencias_comerciales/1
  # GET /referencias_comerciales/1.json
  def show
  end

  # GET /referencias_comerciales/new
  def new
    @referencias_comerciale = ReferenciasComerciale.new
  end

  # GET /referencias_comerciales/1/edit
  def edit
  end

  # POST /referencias_comerciales
  # POST /referencias_comerciales.json
  def create
    @referencias_comerciale = ReferenciasComerciale.new(referencias_comerciale_params)
    render action: :new unless @referencias_comerciale.save

  end

  # PATCH/PUT /referencias_comerciales/1
  # PATCH/PUT /referencias_comerciales/1.json
  def update
    render action: :edit unless @referencias_comerciale.update_attributes(referencias_comerciale_params)
  end

  # DELETE /referencias_comerciales/1
  # DELETE /referencias_comerciales/1.json
  def destroy
    @referencias_comerciale.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referencias_comerciale
      @referencias_comerciale = ReferenciasComerciale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referencias_comerciale_params
      params.require(:referencias_comerciale).permit(:nombre)
    end
end
