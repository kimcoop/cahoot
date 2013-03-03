Cahoot::Application.routes.draw do

  devise_for :users do
	  resources :lists
	 end

  resources :items

  root :to => 'home#index'

end
