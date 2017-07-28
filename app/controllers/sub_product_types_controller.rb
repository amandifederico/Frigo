class SubProductTypesController < ApplicationController
  before_action :set_sub_product_type, only: [:show, :edit, :update, :destroy]

  # GET /sub_product_types
  # GET /sub_product_types.json
  def index
    @sub_product_types = SubProductType.all
  end

  # GET /sub_product_types/1
  # GET /sub_product_types/1.json
  def show
  end

  # GET /sub_product_types/new
  def new
    @sub_product_type = SubProductType.new
  end

  # GET /sub_product_types/1/edit
  def edit
  end

  # POST /sub_product_types
  # POST /sub_product_types.json
  def create
    @sub_product_type = SubProductType.new(sub_product_type_params)

    respond_to do |format|
      if @sub_product_type.save
        format.html { redirect_to @sub_product_type, notice: 'Sub product type was successfully created.' }
        format.json { render :show, status: :created, location: @sub_product_type }
      else
        format.html { render :new }
        format.json { render json: @sub_product_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_product_types/1
  # PATCH/PUT /sub_product_types/1.json
  def update
    respond_to do |format|
      if @sub_product_type.update(sub_product_type_params)
        format.html { redirect_to @sub_product_type, notice: 'Sub product type was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_product_type }
      else
        format.html { render :edit }
        format.json { render json: @sub_product_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_product_types/1
  # DELETE /sub_product_types/1.json
  def destroy
    @sub_product_type.destroy
    respond_to do |format|
      format.html { redirect_to sub_product_types_url, notice: 'Sub product type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_product_type
      @sub_product_type = SubProductType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_product_type_params
      params.require(:sub_product_type).permit(:description)
    end
end
