class ReviewsController < ApplicationController

    def index 
        render json: Review.all, status: :ok
    end

    def show 
        review = Review.find_by(id:params[:id])
        if review
            render json: review, status: :ok
        else 
            render json: {error: "review not found"}, status: :not_found
        end
    end

    def create
        review = Review.create(review_params)
        render json: review, status: :created    
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy 
        head :no_content 
    end

    private 

    def review_params 
        params.permit(:campsite, :title, :date, :content, :image)
    end

    # review
# t.string "campsite"
# t.string "title"
# t.integer "date"
# t.string "content"
# t.string "image"
# t.integer "campsite_id"
# t.integer "user_id"

end

end
