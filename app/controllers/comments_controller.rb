class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    comment = Comment.new(comment_params)
    comment.save
    redirect_to comment.article
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:author, :body, :article_id).to_h.merge(params.permit(:article_id).to_h)
  end
  
end
