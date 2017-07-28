class SubProductDetailsController < ApplicationController
  before_action :set_sub_product_detail, only: [:show, :edit, :update, :destroy]

  # GET /sub_product_details
  # GET /sub_product_details.json
  def index
    @sub_product_details = SubProductDetail.all
  end

  # GET /sub_product_details/1
  # GET /sub_product_details/1.json
  def show
  end

  # GET /sub_product_details/new
  def new
    @sub_product_detail = SubProductDetail.new
  end

  # GET /sub_product_details/1/edit
  def edit
  end

  # POST /sub_product_details
  # POST /sub_product_details.json
  def create
    @sub_product_detail = SubProductDetail.new(sub_product_detail_params)

    respond_to do |format|
      if @sub_product_detail.save
        format.html { redirect_to @sub_product_detail, notice: 'Sub product detail was successfully created.' }
        format.json { render :show, status: :created, location: @sub_product_detail }
      else
        format.html { render :new }
        format.json { render json: @sub_product_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_product_details/1
  # PATCH/PUT /sub_product_details/1.json
  def update
    respond_to do |format|
      if @sub_product_detail.update(sub_product_detail_params)
        format.html { redirect_to @sub_product_detail, notice: 'Sub product detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_product_detail }
      else
        format.html { render :edit }
        format.json { render json: @sub_product_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_product_details/1
  # DELETE /sub_product_details/1.json
  def destroy
    @sub_product_detail.destroy
    respond_to do |format|
      format.html { redirect_to sub_product_details_url, notice: 'Sub product detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_product_detail
      @sub_product_detail = SubProductDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_product_detail_params
      params.require(:sub_product_detail).permit(:sub_product_id, :sub_product_type_id, :weight, :weight_control, :observation)
    end
end
