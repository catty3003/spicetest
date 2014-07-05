class MatrixnamesController < ApplicationController
  before_action :set_matrixname, only: [:show, :edit, :update, :destroy]

  # GET /matrixnames
  # GET /matrixnames.json
  def index
    @matrixnames = Matrixname.all
  end

  # GET /matrixnames/1
  # GET /matrixnames/1.json
  def show
  end

  # GET /matrixnames/new
  def new
    @matrixname = Matrixname.new
  end

  # GET /matrixnames/1/edit
  def edit
  end

  # POST /matrixnames
  # POST /matrixnames.json
  def create
    @matrixname = Matrixname.new(matrixname_params)

    respond_to do |format|
      if @matrixname.save
        format.html { redirect_to @matrixname, notice: 'Matrixname was successfully created.' }
        format.json { render action: 'show', status: :created, location: @matrixname }
      else
        format.html { render action: 'new' }
        format.json { render json: @matrixname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrixnames/1
  # PATCH/PUT /matrixnames/1.json
  def update
    respond_to do |format|
      if @matrixname.update(matrixname_params)
        format.html { redirect_to @matrixname, notice: 'Matrixname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @matrixname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrixnames/1
  # DELETE /matrixnames/1.json
  def destroy
    @matrixname.destroy
    respond_to do |format|
      format.html { redirect_to matrixnames_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matrixname
      @matrixname = Matrixname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matrixname_params
      params.require(:matrixname).permit(:m_common_name)
    end
end
