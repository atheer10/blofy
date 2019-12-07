class CommentsController < ApplicationController

def create 
@post = Post.find(params[:post_id])
@comment = @post.comments.create(comment_params)
redirect_to post_path(@post)
end

def destroy 
    #find post 
@post = Post.find(params[:post_id])
#find comment associated with post
@comment = @post.comments.find(params[:id])
#destory the comment
@comment.destroy 
# redirect to current post 
redirect_to post_path(@post)


end

private def comment_params 
params.require(:comment).permit(:username, :body)  
end

end
