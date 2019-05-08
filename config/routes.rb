Rails.application.routes.draw do
  root 'logins#welcome'
  get 'login', to: 'logins#new'
  post 'login',to: 'logins#create'
  post 'logout', to: 'logins#destroy'
  
  resources :matches
  resources :away_players
  resources :away_teams
  resources :contracts
  resources :home_players
  resources :home_teams
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
