Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :entries, except: :index
  resources :tasks do
    resources :entries, only: :index

    member do
      patch :approve
      patch :decline
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
