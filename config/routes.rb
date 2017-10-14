Rails.application.routes.draw do

  root 'conversations#index'
  resources 'conversations', only: [:index, :create, :show, :destroy]
  resources 'messages', only: [:update]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
