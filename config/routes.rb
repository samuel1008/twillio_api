Rails.application.routes.draw do

  resources :people
  devise_for :users
  root 'home#index'

  resources :conversations, only: [:index] do
  	resources :messages, module: :conversations, only: [:index, :create]
  end

  #Twilio inbound messages
  post 'conversations/messages/reply', to: 'conversations/messages#reply'
	

end
