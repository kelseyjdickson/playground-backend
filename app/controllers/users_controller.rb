class UsersController < ApplicationController
    def create
        user = User.create(
            username: params[:username],
            image: params[:image],
            password: params[:password]
        )
        if user.valid?
        render json: user, status: :created
    else
        render json: {message: user.errors.full_messages }, status: :bad_request

    
        end

    end
  
end
