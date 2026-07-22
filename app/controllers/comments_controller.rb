class CommentsController < ApplicationController
  before_action :set_blog
  before_action :set_comment, only: [:edit, :update, :destroy]
  before_action :authorize_comment_owner, only: %i[ edit update destroy ]

  def create
    @comment = @blog.comments.build(comment_params.merge(user: Current.user))

    if @comment.save
      redirect_to @blog, notice: "Comment added successfully."
    else
      redirect_to @blog, alert: "Unable to add comment."
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to @blog, notice: "Comment updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy
    redirect_to @blog, notice: "Comment deleted successfully."
  end

  private

  def set_blog
    @blog = Blog.find(params[:blog_id])
  end

  def set_comment
    @comment = @blog.comments.find(params[:id])
  end

  def authorize_comment_owner
    return if @comment.owned_by?(Current.user) || @blog.owned_by?(Current.user)

    redirect_to @blog, alert: "You can only edit or delete your own comments, and the post owner can delete any comment."
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end