class Api::ListingsController < ApplicationController 
    before_action :set_listing, only: [:show, :update, :destroy]

    def index
        render json: Listing.all
    end

    def create 
        listing = Listing.new(listing_params)
        if listing.save
            render json: listing
        else 
            render json: { message: listing.errors }, status: 400
        end 
    end 


    def show 
        render json: @listing
    end 

    def update 
        if @listing.update(listing_params)
            render json: @listing 
        else 
            render json: { message: @listing.errors }, status: 400
        end 
    end 

    def destroy 
        if @listing.destroy
            render status: 204 
        else 
            render json: { message: "Unable to remove this listing"}, status: 400
        end 
    end 

    private 

        def listing_params
            params.require(:listing).permit(:name, :price, :img_url, :street, :city, :state, :postal_code, :description, :host, :host_id, :count)
        end

        # helper method
        def set_listing
            @listing = Listing.find_by(id: params[:id])
        end 
end

