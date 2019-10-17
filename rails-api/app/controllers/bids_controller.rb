class BidsController < ApplicationController

    def new
      @bid = Bid.new
    end

  def create
    @auction = Auction.find(params[:auction_id])
    @bid = Bid.new bid_params
    @bid.user = current_user
    @bid.auction = @auction
    if @bid.save
        flash[:notice] = 'Bid posted'
        redirect_to auction_path(@auction)
    end
  end

  private

  def bid_params
    params.require(:bid).permit(:value)
  end

end
