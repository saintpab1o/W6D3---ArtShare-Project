class UsersController < ApplicationController
    def index

        if params[:username]
            @user = User.find_by(username: params[:username])
            render json: @user
        else
            render json: User.all
        end
    end


        #         if params[:comment_id]
        #     @artwork = Artwork.find(params[:artwork_id])

        #     render json: @artwork.comments
        # elsif params[:user_id] 
        #     @user = User.find(params[:user_id])
        #     render json: @user.comments
        # else
        #     render json: Comment.all
    

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: @user.errors.full_messages, status: :unprocessable_entity
        end
    end


    def show
        @user = User.find(params[:id])
        render json: @user 
    end

    def update 
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: @user 
        else
            render json: @user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy 
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:username)

    end

end