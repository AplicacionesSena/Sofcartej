class ProveedoresController < ApplicationController
  before_action :set_proveedore, only: [:show, :edit, :update, :destroy]

  # GET /proveedores
  # GET /proveedores.json
  def index
    @proveedores = Proveedore.all
  end

  # GET /proveedores/1
  # GET /proveedores/1.json
  def show
  end

  # GET /proveedores/new
  def new
    @proveedore = Proveedore.new
  end

  # GET /proveedores/1/edit
  def edit
  end

  # POST /proveedores
  # POST /proveedores.json
  def create
    @proveedore = Proveedore.new(proveedore_params)
    ender action: :new unless @proveedore.save

  end

  # PATCH/PUT /proveedores/1
  # PATCH/PUT /proveedores/1.json
  def update
    render action: :edit unless @proveedore.update_attributes(proveedore_params)
  end

  # DELETE /proveedores/1
  # DELETE /proveedores/1.json
  def destroy
    @proveedore.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveedore
      @proveedore = Proveedore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proveedore_params
      params.require(:proveedore).permit(:nombre, :telefono, :direccion, :correo)
    end
end
