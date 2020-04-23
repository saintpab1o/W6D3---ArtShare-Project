class CommentsController < ApplicationController

    def index
        if params[:artwork_id]
            @artwork = Artwork.find(params[:artwork_id])

            render json: @artwork.comments
        elsif params[:user_id] 
            @user = User.find(params[:user_id])
            render json: @user.comments
        else
            render json: Comment.all
        end
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            render json: @comment
        else
            render json: @acomment.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy 
        render json: @comment
    end

    private

    def artwork_params
        params.require(:comment).permit(:body, :user_id, :artwork_id)

    end

end