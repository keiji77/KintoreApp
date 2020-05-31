Rails.application.routes.draw do
  #ログイン機能
  devise_for :users
  
  #トップページの指定
  root to: 'tops#index'

  resources :tops
  resources :muscles
  resources :meals
  resources :users, only: :show
end