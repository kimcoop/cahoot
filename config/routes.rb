Cahoot::Application.routes.draw do

  resources :lists do
  	resources :items
  end

  devise_for :users

  root :to => 'home#index'

end
