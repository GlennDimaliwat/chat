# Chat

Simple chat application for Ruby on Rails

## Model

### ERD
![](/docs/images/erd.png)

### User (devise)
- id: integer
- email: string

### Conversation
- id: integer
- topic: string

### UserConversations (Join Table)
- user_id: User
- conversation_id: Conversation

### Message
- id: integer
- user_id: User
- conversation_id: Conversation
- body: text


## Controller

### ConversationsController
- index - Shows a list of Conversations
- create - Creates a new Conversation or Joins an existing Conversation
- show - Shows the conversation and its messages
- destroy - Deletes a conversation and its messages

### MessagesController
- update - Updates the messages in a Conversation