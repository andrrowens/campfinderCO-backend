class CampsitesController < ApplicationController

    def index 
        campsites = Campsite.all
        render json: campsites, status: :ok
    end

    def show 
        campsite = Campsite.find(params[:id])
        render json: campsite, status: :ok
    end

    def create
        campsite = Campsite.create!(campsite_params)
        render json: campsite, status: :created    
    end

    def update
        campsite = Campsite.find(params[:id])
        campsite.update!(campsite_params)
        render json: campsite, status: :accepted
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
