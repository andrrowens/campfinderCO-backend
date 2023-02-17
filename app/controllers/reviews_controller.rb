class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :update, :destroy]

    def show
        render json: @review 
    end
    
    def index
        reviews = Review.all
        render json: reviews 
    end
    
    def create
        review = @user.reviews.create!(review_params)
        render json: review, status: :created
    end

    def update
        @review.update!(review_params)
        render json: @review, status: :accepted
    end

    def destroy
       @review.destroy 
        head :no_content 
    end


    
    private

    def find_review 
        @review = Review.find(params[:id])
    end
    
    def review_params 
        params.permit(:title, :date, :content, :image, :user_id, :campsite_id)
    end

end
    
