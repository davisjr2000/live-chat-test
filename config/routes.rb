Rails.application.routes.draw do

  get 'lesson_request/new'
  get 'lesson_request/create'
  get 'lesson_request/show'
  get 'lesson_request/index'
  get 'lesson_request/destroy'
  get 'sensei_subject/new'
  get 'sensei_subject/create'
  get 'sensei_subject/index'
  get 'sensei_subject/destroy'
  get 'subject/index'
  get 'agenda/new'
  get 'agenda/create'
  get 'agenda/edit'
  get 'agenda/update'
  get 'agenda/index'
  get 'agenda/destroy'
  get 'sensei/new'
  get 'sensei/create'
  get 'sensei/index'
  get 'sensei/show'
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
