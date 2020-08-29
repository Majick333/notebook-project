Rails.application.routes.draw do
  get 'notes/index'
  get 'notes/show'
  get 'notes/new'
  get 'notes/edit'
  get 'notes/create'
  get 'notes/update'
  get 'notes/destroy'
  get 'callbacks/github'
  root 'home#index'
  
  devise_for :users, :controllers => {:registrations => "registrations", :omniauth_callbacks => "callbacks"}
  #change users/login to /login route
    devise_scope :user do
      get 'login', to: 'devise/sessions#new'
    end
    devise_scope :user do
      get 'signup', to: 'devise/registrations#new'
    end
    resources :notebooks
    resources :notes
  #devise_for :users, controllers: { omniauth_callbacks:  "callbacks" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
