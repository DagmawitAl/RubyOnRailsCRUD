class RentersController < ApplicationController

    # before_action :current_renter, only: [:show,:edit,:update,:destroy]

    def index
        @renters = Renter.all
    end
    
    def show
        @renter = Renter.find(params[:id])
    end

    def new
        @renter = Renter.new
    end

    def create
        @renter = Renter.create(renter_params)

        redirect_to renter_path(@renter)
    end

    def edit
        @renter = Renter.find(params[:id])
    end

    def update
        @renter = Renter.find(params[:id])
        @renter.update

        redirect_to renter_path(@renter)
    end

    def destroy
        @renter = Renter.find(params[:id])
        @renter.destroy

        redirect_to renter_path
    end

    private
        def renter_params
            params.require(:renter).permit(:name, :room_number)
        end

        # def current_renter
        #     @renter = Renter.find(params[:id])
        # end
end
