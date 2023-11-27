Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :entries, except: [:index, :new]
  resources :tasks do
    resources :entries, only: [:index, :new]

    member do
      patch :approve
      patch :decline
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
