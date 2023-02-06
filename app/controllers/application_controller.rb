class ApplicationController < ActionController::Base
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record 


    def not_found 
        render json: {error: "Record not found"}, status: 400
    end

    def invalid_record 
        render json: {error: rasied_error.record.errors.full_message.to_sentence}, status: 400
    end

end
