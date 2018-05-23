class PostsController < ApplicationController

  def new
  end

  def index
    @post = Post.all
  end

  def create
    post = Post.new(post_params)
    post.save
    redirect_to user_path(current_user.id)
  end

  def show
  end

  def destroy
    Post.delete(params[:delete])
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :subject, :user_id)
  end
end
