class MessagesController < ApplicationController
  skip_before_action :is_authorized
  # GET /messages OR  /messages.json
  def index
    @messages = Message.all
    render :json => @messages.to_json(:include => [:request, :sender, :receiver])
  end

  def show
    @message = Message.find(params[:id])
  end

  # POST
  def create
    @offer_new = Message.new(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:sender_id, :receiver_id, :content)
  end
end
