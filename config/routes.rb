Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registration:  'users/registrations' }

  root 'users#index'
  resources :users
end
