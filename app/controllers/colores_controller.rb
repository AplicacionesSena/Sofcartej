class ColoresController < ApplicationController
  before_action :set_colore, only: [:show, :edit, :update, :destroy, :index, :new, :create]
  skip_before_action :verify_authenticity_token
  # GET /colores
  # GET /colores.json
  def index
    @colores = @tela.colores.all
  end

  # GET /colores/1
  # GET /colores/1.json
  def show
     @colores = @tela.colores.all
  end

  # GET /colores/new
  def new
    @colore = Colore.new
  end

  # GET /colores/1/edit
  def edit
  end

  # POST /colores
  # POST /colores.json
  def create
    @colore = Colore.new(colore_params)
    @colore.tela_id = @tela.id
      respond_to do |format|
        if @colore.save
          format.html { redirect_to tela_colores_path(@tela), notice: 'El color ha sido creado exitosamente.' }
          format.json { render :show, status: :created, location: @colore }
        else
          format.html { render :new }
          format.json { render json: @colore.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /colores/1
  # PATCH/PUT /colores/1.json
  def update
    render action: :edit unless @colore.update_attributes(colore_params)
  end

  # DELETE /colores/1
  # DELETE /colores/1.json
  def destroy
    @colore.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colore
      @tela = Tela.find(params[:tela_id]) 
      @colore = Colore.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colore_params
      params.require(:colore).permit(:cantidadActual, :entrada, :salida, :tela_id, :color, :datos, :img)
    end
end
