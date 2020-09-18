Rails.application.routes.draw do
  resources :calendars do
      resources :events
  end

  
  resources :notebooks do
    resources :notes
  end
  resources :notes
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
    
  #devise_for :users, controllers: { omniauth_callbacks:  "callbacks" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
