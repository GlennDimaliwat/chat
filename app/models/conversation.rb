class Conversation < ApplicationRecord
    has_many :user_conversations
    has_many :messages
    has_many :users, through: :user_conversations

    validates :topic, presence: true
    
    def includes_user?(user)
        users.where(id: user).exists?
    end
end
