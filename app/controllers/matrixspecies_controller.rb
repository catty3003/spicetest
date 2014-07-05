class MatrixspeciesController < ApplicationController
  before_action :set_matrixspecy, only: [:show, :edit, :update, :destroy]

  # GET /matrixspecies
  # GET /matrixspecies.json
  def index
    @matrixspecies = Matrixspecy.all
  end

  # GET /matrixspecies/1
  # GET /matrixspecies/1.json
  def show
  end

  # GET /matrixspecies/new
  def new
    @matrixspecy = Matrixspecy.new
  end

  # GET /matrixspecies/1/edit
  def edit
  end

  # POST /matrixspecies
  # POST /matrixspecies.json
  def create
    @matrixspecy = Matrixspecy.new(matrixspecy_params)

    respond_to do |format|
      if @matrixspecy.save
        format.html { redirect_to @matrixspecy, notice: 'Matrixspecy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @matrixspecy }
      else
        format.html { render action: 'new' }
        format.json { render json: @matrixspecy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrixspecies/1
  # PATCH/PUT /matrixspecies/1.json
  def update
    respond_to do |format|
      if @matrixspecy.update(matrixspecy_params)
        format.html { redirect_to @matrixspecy, notice: 'Matrixspecy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @matrixspecy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrixspecies/1
  # DELETE /matrixspecies/1.json
  def destroy
    @matrixspecy.destroy
    respond_to do |format|
      format.html { redirect_to matrixspecies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matrixspecy
      @matrixspecy = Matrixspecy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matrixspecy_params
      params.require(:matrixspecy).permit(:m_species)
    end
end
