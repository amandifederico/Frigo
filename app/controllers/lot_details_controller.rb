class LotDetailsController < ApplicationController
  before_action :set_lot_detail, only: [:show, :edit, :update, :destroy]

  # GET /lot_details
  # GET /lot_details.json
  def index
    @lot_details = LotDetail.all
  end

  # GET /lot_details/1
  # GET /lot_details/1.json
  def show
  end

  # GET /lot_details/new
  def new
    @lot_detail = LotDetail.new
  end

  # GET /lot_details/1/edit
  def edit
  end

  # POST /lot_details
  # POST /lot_details.json
  def create
    @lot_detail = LotDetail.new(lot_detail_params)

    respond_to do |format|
      if @lot_detail.save
        format.html { redirect_to @lot_detail, notice: 'Lot detail was successfully created.' }
        format.json { render :show, status: :created, location: @lot_detail }
      else
        format.html { render :new }
        format.json { render json: @lot_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lot_details/1
  # PATCH/PUT /lot_details/1.json
  def update
    respond_to do |format|
      if @lot_detail.update(lot_detail_params)
        format.html { redirect_to @lot_detail, notice: 'Lot detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @lot_detail }
      else
        format.html { render :edit }
        format.json { render json: @lot_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lot_details/1
  # DELETE /lot_details/1.json
  def destroy
    @lot_detail.destroy
    respond_to do |format|
      format.html { redirect_to lot_details_url, notice: 'Lot detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lot_detail
      @lot_detail = LotDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lot_detail_params
      params.require(:lot_detail).permit(:lot_id, :animal_id, :quantity, :observation)
    end
end
