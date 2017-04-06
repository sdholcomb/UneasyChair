Rails.application.routes.draw do

  get 'search/index'

  resources :user_roles, only: [:new, :create, :edit, :destroy]
  get 'uploads/new'

  resources :search, only: [:index]

  get 'uploads/create'

  get '/conferences/search'

  get 'users/search'

  get 'users/set_user_role'

  get 'uploads/index'

  devise_for :users
  get 'welcome/index'

  resources :tracks
  resources :users
  resources :conferences
  resources :reviews
  resources :requests
  resources :connections


  resources :papers, only: [:index, :new, :edit, :create, :destroy]


  resources :tracks do
    member do
      get 'add_user'
    end
  end

  resources :papers do
    resources :reviews
  end

  # devise_for :members, :controllers => { :registrations => "registrations" }

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
