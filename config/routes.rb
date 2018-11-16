Rails.application.routes.draw do


  devise_for :users
  root to: 'pages#home'
  resources :chat_rooms, only: [:show, :index] do
    resources :messages, only: [:create]
  end
  resources :users, only: [:show]
  resources :senseis, only: [:new, :create, :index, :show] do
    resources :agendas, only: [:new, :create, :index, :edit, :update, :destroy]
    resources :sensei_subjects, only: [:new, :create, :index, :destroy]

  end
  resources :subjects, only: [:index]
  resources :lesson_requests, only: [:new, :create, :show, :index, :destroy]

  mount ActionCable.server => "/cable"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
