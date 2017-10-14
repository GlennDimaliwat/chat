Rails.application.routes.draw do

  patch 'messages/update'

  root 'conversations#index'
  resources 'conversations', only: [:index, :create, :show, :update]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
