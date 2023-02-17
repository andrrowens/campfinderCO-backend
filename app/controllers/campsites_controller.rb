class CampsitesController < ApplicationController
    before_action :authorize
    skip_before_action :authorize, only: [:index]

    def show
        campsite = Campsite.find(params[:id])
        render json: campsite.to_json(include: [reviews: {only: [:title, :date, :content, :image]}], except: [:created_at, :updated_at]), status: :ok 
    end
    
    def index
        campsites = Campsite.all
        render json: campsites 
    end
    
    def create
        @campsite = Campsite.create(name: params[:name], region: params[:region], description: params[:description], elevation: params[:elevation], coordinates: params[:coordinates], image: params[:image])
        if @campsite 
            puts "Campsite created successfully"
            render json: @campsite, status: :created
        end
    end



    # def update
    #     return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    #     review = Review.find(params[:id])
    # end

    def update
        campsite = Campsite.find(user_id: session[:user_id])
        render json: campsite, status: :accepted
    end

    def destroy
        campsite = Campsite.find(params[:id])
        campsite.destroy 
        head :no_content 
    end


    private
    
    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    end

end



#     def index 
#         campsites = Campsite.all
#         render json: campsites, status: :ok
#     end

#     def show 
#         campsite = Campsite.find(params[:id])
#         render json: campsite, status: :ok
#     end

#     def create
#         campsite = Campsite.create!(campsite_params)
#         render json: campsite, status: :created    
#     end

#     def update
#         campsite = Campsite.find(params[:id])
#         campsite.update!(campsite_params)
#         render json: campsite, status: :accepted
#     end

#     def destroy
#         campsite = Campsite.find(params[:id])
#         campsite.destroy 
#         head :no_content 
#     end

#     private 

#     def campsite_params 
#         params.permit(:name, :region, :description, :elevation, :coordinates, :image)
#     end

# end
