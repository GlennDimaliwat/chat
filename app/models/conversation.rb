class Conversation < ApplicationRecord
    has_many :user_conversations
    has_many :messages, dependent: :destroy
    has_many :users, through: :user_conversations, dependent: :destroy

    validates :topic, presence: true
    
    def includes_user?(user)
        users.where(id: user).exists?
    end
end
