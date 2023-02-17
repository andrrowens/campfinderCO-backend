class ReviewsController < ApplicationController
    before_action :authorize
    skip_before_action :authorize, only: [:index]

    def show
        review = Review.find(params[:id])
        render json: review 
    end
    
    def index
        reviews = Review.all
        render json: reviews 
    end
    
    def create
        # debugger
        @review = Review.create(id: session[:user_id], title: params[:title], content: params[:content], date: params[:date], image: params[:image])
        if @review 
            puts "Review saved successfully"
            render json: @review, status: :created
        end
    end

    # def create
    #     review = Review.create(id: session[:user_id])
    #     render json: review, status: :created
    # end
    
    # def update
    #     return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    #     review = Review.find(params[:id])
    # end

    def update
        # debugger
        review = Review.where(id: params[:id])
        review.update(title: params[:title], content: params[:content], date: params[:date], image: params[:image])
        render json: review, status: :accepted
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy 
        head :no_content 
    end


    
    private
    
    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    end

end
    


    # def index 
    #     reviews = Review.all
    #     render json: reviews, status: :ok
    # end

    # def show 
    #     return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    #     review = Review.find(params[:id])
    #     render json: review, status: :ok
    # end

    # # def show 
    # #     review = Review.find(params[:id])
    # #     render json: review, status: :ok
    # # end

    # def create
    #     review = Review.create!(review_params)
    #     render json: review, status: :created    
    # end

    # def update 
    #     review = Review.find(params[:id])
    #     review.update! 
    #     render json: review, status: :accepted
    # end

    # def destroy
    #     review = Review.find(params[:id])
    #     review.destroy 
    #     head :no_content 
    # end

    # private 

    # def review_params 
    #     params.permit(:title, :date, :content, :image)
    # end

# end
