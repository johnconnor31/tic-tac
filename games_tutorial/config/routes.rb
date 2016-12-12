Rails.application.routes.draw do
  resources :comments ,:users ,:games
  get 'log_in' => 'sessions#new', :as => 'log_in'
  get 'sign_up' => 'users#new', :as =>  'sign_up'
  resources 'sessions','users','games'
  get 'signout' => 'sessions#destroy' ,:as =>'signout'
  root 'games#index'
  get 'games_all' => 'games#index' , :as => 'games_all'
end