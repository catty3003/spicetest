class MatrixproductformsController < ApplicationController
  before_action :set_matrixproductform, only: [:show, :edit, :update, :destroy]

  # GET /matrixproductforms
  # GET /matrixproductforms.json
  def index
    @matrixproductforms = Matrixproductform.all
  end

  # GET /matrixproductforms/1
  # GET /matrixproductforms/1.json
  def show
  end

  # GET /matrixproductforms/new
  def new
    @matrixproductform = Matrixproductform.new
  end

  # GET /matrixproductforms/1/edit
  def edit
  end

  # POST /matrixproductforms
  # POST /matrixproductforms.json
  def create
    @matrixproductform = Matrixproductform.new(matrixproductform_params)

    respond_to do |format|
      if @matrixproductform.save
        format.html { redirect_to @matrixproductform, notice: 'Matrixproductform was successfully created.' }
        format.json { render action: 'show', status: :created, location: @matrixproductform }
      else
        format.html { render action: 'new' }
        format.json { render json: @matrixproductform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrixproductforms/1
  # PATCH/PUT /matrixproductforms/1.json
  def update
    respond_to do |format|
      if @matrixproductform.update(matrixproductform_params)
        format.html { redirect_to @matrixproductform, notice: 'Matrixproductform was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @matrixproductform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrixproductforms/1
  # DELETE /matrixproductforms/1.json
  def destroy
    @matrixproductform.destroy
    respond_to do |format|
      format.html { redirect_to matrixproductforms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matrixproductform
      @matrixproductform = Matrixproductform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matrixproductform_params
      params.require(:matrixproductform).permit(:product_form)
    end
end
