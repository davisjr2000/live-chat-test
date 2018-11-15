Rails.application.routes.draw do
  get 'users/show'
  get 'messages/create'
  get 'chat_rooms/show'
  devise_for :users
  root to: 'pages#home'
  resources :chat_rooms, only: [:show] do
    resources :messages, only: [:create]
  end
  resources :users, only: [:index, :show]
  mount ActionCable.server => "/cable"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
