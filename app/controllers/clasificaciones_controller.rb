class ClasificacionesController < ApplicationController
  before_action :set_clasificacione, only: [:show, :edit, :update, :destroy]

  # GET /clasificaciones
  # GET /clasificaciones.json
  def index
    @clasificaciones = Clasificacione.all
  end

  # GET /clasificaciones/1
  # GET /clasificaciones/1.json
  def show
  end

  # GET /clasificaciones/new
  def new
    @clasificacione = Clasificacione.new
  end

  # GET /clasificaciones/1/edit
  def edit
  end

  # POST /clasificaciones
  # POST /clasificaciones.json
  def create
    @clasificacione = Clasificacione.new(clasificacione_params)
    render action: :new unless @clasificacione.save
  end

  # PATCH/PUT /clasificaciones/1
  # PATCH/PUT /clasificaciones/1.json
  def update
    render action: :edit unless @clasificacione.update_attributes(clasificacione_params)
  end

  # DELETE /clasificaciones/1
  # DELETE /clasificaciones/1.json
  def destroy
    @clasificacione.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clasificacione
      @clasificacione = Clasificacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clasificacione_params
      params.require(:clasificacione).permit(:nombre, :descripcion)
    end
end
