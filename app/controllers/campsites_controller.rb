class CampsitesController < ApplicationController

    def index 
        render json: Campsite.all, status: :ok
    end

    def show 
        campsite = Campsite.find_by(id:params[:id])
        if campsite
            render json: campsite, status: :ok
        else 
            render json: {error: "campsite not found"}, status: :not_found
        end
    end

    def create
        campsite = Campsite.create(campsite_params)
        render json: campsite, status: :created    
    end

    def destroy
        campsite = Campsite.find(params[:id])
        campsite.destroy 
        head :no_content 
    end

    private 

    def campsite_params 
        params.permit(:name, :region, :description, :elevation, :coordinates)
    end

end
