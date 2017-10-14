class MessagesController < ApplicationController
  def update
    conversation = Conversation.find(params[:conversation_id])
    conversation.messages << Message.new(user_id: current_user.id, body: params[:body])
    conversation.save

    redirect_to conversation_path(conversation)
  end
end
