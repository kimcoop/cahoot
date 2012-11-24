Cahoot::Application.routes.draw do

  resources :list_items

  devise_for :users

  root :to => 'home#index'

end
