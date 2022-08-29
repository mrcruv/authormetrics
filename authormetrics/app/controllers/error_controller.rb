class ErrorsController < ApplicationController
    def not_found
      render json: {
        status: 404,
        error: :not_found,
        message: 'sorry for this'
      }, status: 404
    end
  
    def internal_server_error
      render json: {
        status: 500,
        error: :internal_server_error,
        message: 'We have a problem'
      }, status: 500
    end
  end