Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations:  'users/registrations' }

  root 'rooms#index'
  resources :rooms, only: [:index]
  resources :messages, only: [:create]
end
