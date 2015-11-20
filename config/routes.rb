Rails.application.routes.draw do
  #root to: 'visitors#index'
  
  authenticated :user do
  root to: 'soirees#index', as: :authenticated_root
  end
  root to: "splash#index"
  
  get 'utilisateur' => 'utilisateur#index', as: :utilisateur
  get 'organisateur' => 'organisateur#index', as: :organisateur
  #get 'utilisateur' => 'utilisateur#index', as: :utilisateur  
  get '/users/sign_out' => "splash#index"
  # get 'soiree' => 'soiree#show'
  # get '/organisateur/soiree/new' => 'soiree#new'

  devise_for :users
  resources :users
  resources :soirees, only:[:create, :new, :show, :index, :destroy, :delete]
end
