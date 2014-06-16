class CommentsController < ApplicationController
  include CommentsHelper

  def create
    # comment_params located in comments_helper
    @comment = Comment.new(comment_params)
    # must assign article_id params to the comment!
    @comment.article_id = params[:article_id]
    @comment.save

    flash.notice = "Your comment has been posted"
    # because article and comment are linked, redirect to correct article with @comment.article
    redirect_to article_path(@comment.article)
  end

end
