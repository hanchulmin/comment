class CommentController < ApplicationController
    
    def create
        @comment = Comment.new
        @comment.content = params[:comment_content]
        @comment.post_id = params[:post_id]
        @comment.save
        
        redirect_to "/home/show/#{params[:post_id]}"
    end
    
    def delete
        delete_comment = Comment.find(params[:id])
        delete_comment.destroy
        
        redirect_to "/home/show/#{params[:id]}"
    end
    
end
