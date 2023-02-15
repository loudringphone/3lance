class CommentsController < ApplicationController
  skip_before_action :is_authorized
  # GET /comments OR  /comments.json
  def index
    @comments = Comment.all
    render :json => @comments.to_json(:include => [:user])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  # POST
  def create
    @offer_new = Comment.new(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :request_id, :content)
  end
end
