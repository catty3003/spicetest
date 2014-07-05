class MatrixplantpartsController < ApplicationController
  before_action :set_matrixplantpart, only: [:show, :edit, :update, :destroy]

  # GET /matrixplantparts
  # GET /matrixplantparts.json
  def index
    @matrixplantparts = Matrixplantpart.all
  end

  # GET /matrixplantparts/1
  # GET /matrixplantparts/1.json
  def show
  end

  # GET /matrixplantparts/new
  def new
    @matrixplantpart = Matrixplantpart.new
  end

  # GET /matrixplantparts/1/edit
  def edit
  end

  # POST /matrixplantparts
  # POST /matrixplantparts.json
  def create
    @matrixplantpart = Matrixplantpart.new(matrixplantpart_params)

    respond_to do |format|
      if @matrixplantpart.save
        format.html { redirect_to @matrixplantpart, notice: 'Matrixplantpart was successfully created.' }
        format.json { render action: 'show', status: :created, location: @matrixplantpart }
      else
        format.html { render action: 'new' }
        format.json { render json: @matrixplantpart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrixplantparts/1
  # PATCH/PUT /matrixplantparts/1.json
  def update
    respond_to do |format|
      if @matrixplantpart.update(matrixplantpart_params)
        format.html { redirect_to @matrixplantpart, notice: 'Matrixplantpart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @matrixplantpart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrixplantparts/1
  # DELETE /matrixplantparts/1.json
  def destroy
    @matrixplantpart.destroy
    respond_to do |format|
      format.html { redirect_to matrixplantparts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matrixplantpart
      @matrixplantpart = Matrixplantpart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matrixplantpart_params
      params.require(:matrixplantpart).permit(:plant_part)
    end
end
