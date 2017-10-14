class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index

    @users = User.where.not(id: current_user.id)

  end

  def create
    
    topic = params[:topic]

    conversation = Conversation.where(topic: topic).first
    
    if !conversation
      @conversation = Conversation.new(topic: topic)
      @conversation.save
    else

      @conversation = Conversation.find(conversation.id)
      unless current_user.has_joined?(conversation)
        @conversation.users << current_user
        @conversation.save
      end
      
    end

    redirect_to conversation_path(@conversation)
  end

  def show    
    @conversation = Conversation.find(params[:id])
    # @message = Message.new
  end

end
