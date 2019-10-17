class AuctionsController < ApplicationController

    def index
        @auctions = Auction.all
    end
    
    def create
        @auction = Auction.new auction_params
        if @auction.save
            flash[:notice] = 'Auction created successfully'
            redirect_to root_path
        else
            flash[:notice] = 'Failed to make listing'
            render :new
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    private

    def auction_params
        params.permit(:item_name, :description, :reserve_price)
    end

end
