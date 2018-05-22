class RepliesController < ApplicationController

  def new
    @current_post = Post.find_by_id(params[:post])
  end

  def index
  end

  def create
    reply = Reply.new(reply_params)
    reply.save
    redirect_to user_path(current_user.id)
  end

  def show
  end

  def destroy

  end

  private

  def reply_params
    params.require(:reply).permit(:content, :user_id, :post_id)
  end

end
