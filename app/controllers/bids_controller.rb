class BidsController < ApplicationController
  before_action :require_logged_in, :set_bid, only: %i[ show edit update destroy ]
  

  # GET /bids or /bids.json
  def index
    @bids = Bid.all
  end

  # GET /bids/1 or /bids/1.json
  def show
    @bid = Bid.find(params[:id])
  end

  # GET /bids/new
  def new
    @bid = Bid.new
  end

  # POST /bids or /bids.json
  def create
    @bid = Bid.new(bid_params)

    respond_to do |format|
      if @bid.save
        format.html { redirect_to product_path(@bid.product), notice: "#{current_user.name} bidded #{@bid.price} for #{@bid.product.name}." }
        format.json { render :show, status: :created, location: @bid }
      else
        format.html { redirect_to product_path(@bid.product), status: :unprocessable_entity }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bids/1 or /bids/1.json
  def update
    respond_to do |format|
      if @bid.update(bid_params)
        format.html { redirect_to bid_url(@bid), notice: "Bid was successfully updated." }
        format.json { render :show, status: :ok, location: @bid }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bids/1 or /bids/1.json
  def destroy
    @bid.destroy

    respond_to do |format|
      format.html { redirect_to bids_url, notice: "Bid was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bid_params
      params.require(:bid).permit(:price, :product_id, :user_id)
    end
end
