class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy, :index, :new, :create]
  skip_before_action :verify_authenticity_token
  # GET /images
  # GET /images.json
  def index
    @images = @tela.images.all
  end

  # GET /images/1
  # GET /images/1.json
  def show
    @images = @tela.images.all
  end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images
  # POST /images.json
  def create
    @image = Image.new(image_params)
    @image.tela_id = @tela.id
      respond_to do |format|
        if @image.save
          format.html { redirect_to tela_images_path(@tela), notice: 'La imagen ha sido creada exitosamente.' }
          format.json { render :show, status: :created, location: @image }
        else
          format.html { render :new }
          format.json { render json: @image.errors, status: :unprocessable_entity }
        end
      end
  end
  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to tela_images_path(@tela)}
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @tela = Tela.find(params[:tela_id])
      @image = Image.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:imagen, :tela_id)
    end
end
