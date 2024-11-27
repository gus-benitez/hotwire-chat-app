class MessagesController < ApplicationController
  before_action :set_room, only: [ :new, :create ]

  # GET /rooms/:room_id/messages/new
  def new
    @message = @room.messages.build
  end

  # POST /rooms/:room_id/messages
  def create
    @message = @room.messages.build(message_params)

    respond_to do |format|
      if @message.save
        format.turbo_stream
        format.html { redirect_to @message }
      end
    end
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
