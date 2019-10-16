class AuctionsController < ApplicationController

    def index
        @auction = Auction.all
    end
    
    def create
        @auction = Auction.new auction_params
        if @auction.save
            flash[:notice] = 'Auction created successfully'
            redirect_to auctions_path(@auction)
        else
            render :new
        end
    end

    private

    def auction_params
        params.require(:auction).permit(:item_name, :description, :reserve_price)
    end

end
