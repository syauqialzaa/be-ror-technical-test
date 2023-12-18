Rails.application.routes.draw do
  root 'books#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  resources :books, only: [:index, :new, :create]
  namespace :api do
    namespace :v1 do
      resources :books, only: [:index]
    end
  end
end
