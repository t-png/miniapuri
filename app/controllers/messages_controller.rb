class MessagesController < ApplicationController
  def index
    @messages = Message.order("created_at DESC")
  end

  def new
  end

  def create
    Message.create(name: message_params[:name], image: message_params[:image], text: message_params[:text], user_id: current_user.id)
  end

  def destroy
    message = Message.find(params[:id])
    if message.user_id == current_user.id
      message.destroy
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    message = Message.find(params[:id])
    if message.user_id == current_user.id
      message.update(message_params)
    end
  end

  private
  def message_params
    params.permit(:name, :image, :text)
  end

end