Rails.application.routes.draw do
  root "main#index"

  get 'main/index'

  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/delete'
  # get 'tasks/index'
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/delete'
  resources :categories do
    member do
      get :delete
    end
  end

  resources :tasks do
    member do
      get :delete
    end
  end

  get 'trees', to: 'trees#index'

  resources :trees do
    member do
      get :delete
    end
  end

  match 'about', to: "main#about", via: :get
  match 'hello', to: "main#hello", via: :get

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
