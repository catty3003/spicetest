class MatrixstorageformsController < ApplicationController
  before_action :set_matrixstorageform, only: [:show, :edit, :update, :destroy]

  # GET /matrixstorageforms
  # GET /matrixstorageforms.json
  def index
    @matrixstorageforms = Matrixstorageform.all
  end

  # GET /matrixstorageforms/1
  # GET /matrixstorageforms/1.json
  def show
  end

  # GET /matrixstorageforms/new
  def new
    @matrixstorageform = Matrixstorageform.new
  end

  # GET /matrixstorageforms/1/edit
  def edit
  end

  # POST /matrixstorageforms
  # POST /matrixstorageforms.json
  def create
    @matrixstorageform = Matrixstorageform.new(matrixstorageform_params)

    respond_to do |format|
      if @matrixstorageform.save
        format.html { redirect_to @matrixstorageform, notice: 'Matrixstorageform was successfully created.' }
        format.json { render action: 'show', status: :created, location: @matrixstorageform }
      else
        format.html { render action: 'new' }
        format.json { render json: @matrixstorageform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrixstorageforms/1
  # PATCH/PUT /matrixstorageforms/1.json
  def update
    respond_to do |format|
      if @matrixstorageform.update(matrixstorageform_params)
        format.html { redirect_to @matrixstorageform, notice: 'Matrixstorageform was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @matrixstorageform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrixstorageforms/1
  # DELETE /matrixstorageforms/1.json
  def destroy
    @matrixstorageform.destroy
    respond_to do |format|
      format.html { redirect_to matrixstorageforms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matrixstorageform
      @matrixstorageform = Matrixstorageform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matrixstorageform_params
      params.require(:matrixstorageform).permit(:storage_form)
    end
end
