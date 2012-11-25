Cahoot::Application.routes.draw do

  resources :lists do
  	resources :list_items
  end

  devise_for :users

  root :to => 'home#index'

end
