class AuctionsController < ApplicationController

    def new
        @auction = Auction.new
    end

    def index
        @auctions = Auction.order(created_at: :desc)
    end
    
    def create
        @auction = Auction.new auction_params
        @auction.user = current_user
        if @auction.save
            flash[:notice] = 'Auction created successfully'
            redirect_to auction_path(@auction)
        else
            flash[:notice] = 'Failed to make listing'
            render :new
        end
    end

    def show
        @auction = Auction.find(params[:id])
        @reserve_price = @auction.reserve_price
    end

    def highest_bid
        @auction = Auction.find(params[:id])
        @bids = @auction.find(params[:bids])
        @highest_bid = @auction.bids.order(value: :desc).limit(1)
    end
    helper_method(:highest_bid)

    private

    def auction_params
        params.require(:auction).permit(:item_name, :description, :reserve_price)
    end

end
