Rails.application.routes.draw do
  root 'books#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  resource :books, only: [:index, :new, :create]
end
