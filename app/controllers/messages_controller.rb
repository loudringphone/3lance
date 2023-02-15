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

  #GET /messages/new
  def new
    @message = Message.new
  end

  # POST
  def create
    @message = Message.create(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to message_url(@message), notice: 'Message was successfully created.'}
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end

  end

  private
  def message_params
    params.require(:message).permit(:sender_id, :receiver_id, :content)
  end
end
