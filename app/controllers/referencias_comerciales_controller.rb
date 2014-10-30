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

    respond_to do |format|
      if @referencias_comerciale.save
        format.html { redirect_to @referencias_comerciale, notice: 'Referencias comerciale was successfully created.' }
        format.json { render :show, status: :created, location: @referencias_comerciale }
      else
        format.html { render :new }
        format.json { render json: @referencias_comerciale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referencias_comerciales/1
  # PATCH/PUT /referencias_comerciales/1.json
  def update
    respond_to do |format|
      if @referencias_comerciale.update(referencias_comerciale_params)
        format.html { redirect_to @referencias_comerciale, notice: 'Referencias comerciale was successfully updated.' }
        format.json { render :show, status: :ok, location: @referencias_comerciale }
      else
        format.html { render :edit }
        format.json { render json: @referencias_comerciale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referencias_comerciales/1
  # DELETE /referencias_comerciales/1.json
  def destroy
    @referencias_comerciale.destroy
    respond_to do |format|
      format.html { redirect_to referencias_comerciales_url, notice: 'Referencias comerciale was successfully destroyed.' }
      format.json { head :no_content }
    end
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
