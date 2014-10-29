class UsosController < ApplicationController
  before_action :set_uso, only: [:show, :edit, :update, :destroy]

  # GET /usos
  # GET /usos.json
  def index
    @usos = Uso.all
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

    respond_to do |format|
      if @uso.save
        format.html { redirect_to @uso, notice: 'Uso was successfully created.' }
        format.json { render :show, status: :created, location: @uso }
      else
        format.html { render :new }
        format.json { render json: @uso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usos/1
  # PATCH/PUT /usos/1.json
  def update
    respond_to do |format|
      if @uso.update(uso_params)
        format.html { redirect_to @uso, notice: 'Uso was successfully updated.' }
        format.json { render :show, status: :ok, location: @uso }
      else
        format.html { render :edit }
        format.json { render json: @uso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usos/1
  # DELETE /usos/1.json
  def destroy
    @uso.destroy
    respond_to do |format|
      format.html { redirect_to usos_url, notice: 'Uso was successfully destroyed.' }
      format.json { head :no_content }
    end
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
