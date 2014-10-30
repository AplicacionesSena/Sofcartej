class BasesTelasController < ApplicationController
  before_action :set_bases_tela, only: [:show, :edit, :update, :destroy]

  # GET /bases_telas
  # GET /bases_telas.json
  def index
    @bases_telas = BasesTela.all
  end

  # GET /bases_telas/1
  # GET /bases_telas/1.json
  def show
  end

  # GET /bases_telas/new
  def new
    @bases_tela = BasesTela.new
  end

  # GET /bases_telas/1/edit
  def edit
  end

  # POST /bases_telas
  # POST /bases_telas.json
  def create
    @bases_tela = BasesTela.new(bases_tela_params)

    respond_to do |format|
      if @bases_tela.save
        format.html { redirect_to @bases_tela, notice: 'Bases tela was successfully created.' }
        format.json { render :show, status: :created, location: @bases_tela }
      else
        format.html { render :new }
        format.json { render json: @bases_tela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bases_telas/1
  # PATCH/PUT /bases_telas/1.json
  def update
    respond_to do |format|
      if @bases_tela.update(bases_tela_params)
        format.html { redirect_to @bases_tela, notice: 'Bases tela was successfully updated.' }
        format.json { render :show, status: :ok, location: @bases_tela }
      else
        format.html { render :edit }
        format.json { render json: @bases_tela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bases_telas/1
  # DELETE /bases_telas/1.json
  def destroy
    @bases_tela.destroy
    respond_to do |format|
      format.html { redirect_to bases_telas_url, notice: 'Bases tela was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bases_tela
      @bases_tela = BasesTela.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bases_tela_params
      params.require(:bases_tela).permit(:clasificacione_id, :nombre)
    end
end
