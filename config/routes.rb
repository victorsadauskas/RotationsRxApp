Rails.application.routes.draw do

  

  resources :m4rotations do
  	resources :m4comments
  end

  resource :session

  resources :users

  root "landing#index"

  get"/home" => "home#index"

  get "/signup" => "users#new"

  resources :rotations do
  	  resources :comments 	  	
  end


end
