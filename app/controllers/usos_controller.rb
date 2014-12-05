class UsosController < ApplicationController
  before_action :set_uso, only: [:show, :edit, :update, :destroy]

  # GET /usos
  # GET /usos.json
  def index
    @usos = Uso.all
  end

  def import
    Uso.import(params[:file])
    redirect_to controller: "sofcartej", action: "importar"
  end
  # GET /usos/1
  # GET /usos/1.json
  def show
  end

  # GET /usos/new
  def new
    @uso = Uso.new
  end

  # GET /usos/1/edit
  def edit
  end

  # POST /usos
  # POST /usos.json
  def create
    @uso = Uso.new(uso_params)
    render action: :new unless @uso.save
  end

  # PATCH/PUT /usos/1
  # PATCH/PUT /usos/1.json
  def update
    render action: :edit unless @uso.update_attributes(uso_params)
  end

  # DELETE /usos/1
  # DELETE /usos/1.json
  def destroy
    @uso.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uso
      @uso = Uso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uso_params
      params.require(:uso).permit(:nombre)
    end
end
