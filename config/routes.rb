Rails.application.routes.draw do

	resource :session

  resources :users

  root "landing#index"

  get "/signup" => "users#new"

  resources :rotations do
  	  resources :comments 	  	
  end


end
