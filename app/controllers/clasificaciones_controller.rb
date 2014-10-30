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

    respond_to do |format|
      if @clasificacione.save
        format.html { redirect_to @clasificacione, notice: 'Clasificacione was successfully created.' }
        format.json { render :show, status: :created, location: @clasificacione }
      else
        format.html { render :new }
        format.json { render json: @clasificacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clasificaciones/1
  # PATCH/PUT /clasificaciones/1.json
  def update
    respond_to do |format|
      if @clasificacione.update(clasificacione_params)
        format.html { redirect_to @clasificacione, notice: 'Clasificacione was successfully updated.' }
        format.json { render :show, status: :ok, location: @clasificacione }
      else
        format.html { render :edit }
        format.json { render json: @clasificacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clasificaciones/1
  # DELETE /clasificaciones/1.json
  def destroy
    @clasificacione.destroy
    respond_to do |format|
      format.html { redirect_to clasificaciones_url, notice: 'Clasificacione was successfully destroyed.' }
      format.json { head :no_content }
    end
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
