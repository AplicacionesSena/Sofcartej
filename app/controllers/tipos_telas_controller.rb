class TiposTelasController < ApplicationController
  before_action :set_tipos_tela, only: [:show, :edit, :update, :destroy]

  # GET /tipos_telas
  # GET /tipos_telas.json
  def index
    @tipos_telas = TiposTela.all
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

  # POST /tipos_telas
  # POST /tipos_telas.json
  def create
    @tipos_tela = TiposTela.new(tipos_tela_params)

    respond_to do |format|
      if @tipos_tela.save
        format.html { redirect_to @tipos_tela, notice: 'Tipos tela was successfully created.' }
        format.json { render :show, status: :created, location: @tipos_tela }
      else
        format.html { render :new }
        format.json { render json: @tipos_tela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_telas/1
  # PATCH/PUT /tipos_telas/1.json
  def update
    respond_to do |format|
      if @tipos_tela.update(tipos_tela_params)
        format.html { redirect_to @tipos_tela, notice: 'Tipos tela was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipos_tela }
      else
        format.html { render :edit }
        format.json { render json: @tipos_tela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_telas/1
  # DELETE /tipos_telas/1.json
  def destroy
    @tipos_tela.destroy
    respond_to do |format|
      format.html { redirect_to tipos_telas_url, notice: 'Tipos tela was successfully destroyed.' }
      format.json { head :no_content }
    end
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
