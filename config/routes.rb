Rails.application.routes.draw do
  #root to: 'visitors#index'
  
  authenticated :user do
  root to: 'soiree#index', as: :authenticated_root
  end
  root to: "splash#index"
  
  get 'utilisateur' => 'utilisateur#index', as: :utilisateur
  get 'organisateur' => 'organisateur#index', as: :organisateur
  #get 'utilisateur' => 'utilisateur#index', as: :utilisateur  
  get '/users/sign_out' => "splash#index"
  devise_for :users
  resources :users
end
