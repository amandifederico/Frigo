class RangeTroopNumbersController < ApplicationController
  before_action :set_range_troop_number, only: [:show, :edit, :update, :destroy]

  # GET /range_troop_numbers
  # GET /range_troop_numbers.json
  def index
    @range_troop_numbers = RangeTroopNumber.all
  end

  # GET /range_troop_numbers/1
  # GET /range_troop_numbers/1.json
  def show
  end

  # GET /range_troop_numbers/new
  def new
    @range_troop_number = RangeTroopNumber.new
  end

  # GET /range_troop_numbers/1/edit
  def edit
  end

  # POST /range_troop_numbers
  # POST /range_troop_numbers.json
  def create
    @range_troop_number = RangeTroopNumber.new(range_troop_number_params)

    respond_to do |format|
      if @range_troop_number.save
        format.html { redirect_to @range_troop_number, notice: 'Range troop number was successfully created.' }
        format.json { render :show, status: :created, location: @range_troop_number }
      else
        format.html { render :new }
        format.json { render json: @range_troop_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /range_troop_numbers/1
  # PATCH/PUT /range_troop_numbers/1.json
  def update
    respond_to do |format|
      if @range_troop_number.update(range_troop_number_params)
        format.html { redirect_to @range_troop_number, notice: 'Range troop number was successfully updated.' }
        format.json { render :show, status: :ok, location: @range_troop_number }
      else
        format.html { render :edit }
        format.json { render json: @range_troop_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /range_troop_numbers/1
  # DELETE /range_troop_numbers/1.json
  def destroy
    @range_troop_number.destroy
    respond_to do |format|
      format.html { redirect_to range_troop_numbers_url, notice: 'Range troop number was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_range_troop_number
      @range_troop_number = RangeTroopNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def range_troop_number_params
      params.require(:range_troop_number).permit(:min, :max)
    end
end
