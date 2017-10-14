class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

  has_many :user_conversations
  has_many :conversations, through: :user_conversations

  def has_joined?(conversation)
    conversations.where(id: conversation).exists?
  end
end
