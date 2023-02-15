class ApplicationController < ActionController::Base
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    rescue_from ActiveRecord::RecordInvalid, with: :not_valid

    # before_action :authorized_user

    # def current_user
    #     user = User.find_by(id:session[:user_id])
    #     user
    # end
    
    # def authorized_user
    #     render json: {errors: "Not Authorized"}, status: :unauthorized unless current_user
    # end


    private

    def not_found(exception)
        render json: {errors: "#{exception.model} not found"}, status: :not_found
    end
    
    def not_valid(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
