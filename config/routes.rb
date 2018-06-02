Rails.application.routes.draw do
  resources :packages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root 'welcome#index'

  resources :package
  resources :user
  resources :survey

end
