Rails.application.routes.draw do
  resources :packages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root 'welcome#index'

  get 'admin' => 'admin#index', as: :admin
  get 'agency' => 'admin#index', as: :agency

  resources :package
  resources :user
  resources :survey

end
