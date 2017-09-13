Rails.application.routes.draw do

  resources :people
  devise_for :users
	root 'home#index'
	resources :home

end
