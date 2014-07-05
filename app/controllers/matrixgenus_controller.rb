class MatrixgenusController < ApplicationController
  before_action :set_matrixgenu, only: [:show, :edit, :update, :destroy]

  # GET /matrixgenus
  # GET /matrixgenus.json
  def index
    @matrixgenus = Matrixgenu.all
  end

  # GET /matrixgenus/1
  # GET /matrixgenus/1.json
  def show
  end

  # GET /matrixgenus/new
  def new
    @matrixgenu = Matrixgenu.new
  end

  # GET /matrixgenus/1/edit
  def edit
  end

  # POST /matrixgenus
  # POST /matrixgenus.json
  def create
    @matrixgenu = Matrixgenu.new(matrixgenu_params)

    respond_to do |format|
      if @matrixgenu.save
        format.html { redirect_to @matrixgenu, notice: 'Matrixgenu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @matrixgenu }
      else
        format.html { render action: 'new' }
        format.json { render json: @matrixgenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrixgenus/1
  # PATCH/PUT /matrixgenus/1.json
  def update
    respond_to do |format|
      if @matrixgenu.update(matrixgenu_params)
        format.html { redirect_to @matrixgenu, notice: 'Matrixgenu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @matrixgenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrixgenus/1
  # DELETE /matrixgenus/1.json
  def destroy
    @matrixgenu.destroy
    respond_to do |format|
      format.html { redirect_to matrixgenus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matrixgenu
      @matrixgenu = Matrixgenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matrixgenu_params
      params.require(:matrixgenu).permit(:m_genus)
    end
end
