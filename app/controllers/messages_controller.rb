class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @match = Match.find(params[:match_id])
    @message.match = @match
    @message.user = current_user
    binding.pry
    if @message.save
      ActionCable.server.broadcast("match_#{@match.id}", {
        message_partial: render(partial: "messages/message", locals: { message: @message, user_is_messages_author: false })
      })
      respond_to do |format|
        format.html { redirect_to match_path(@match) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "matches/show" }
        format.js
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
