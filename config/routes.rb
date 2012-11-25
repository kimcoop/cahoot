Cahoot::Application.routes.draw do

  resources :lists

  resources :list_items

  devise_for :users

  root :to => 'home#index'

end
