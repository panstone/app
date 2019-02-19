Rails.application.routes.draw do

  get 'admin' => 'admin#index'
  controller :sessions do
  	get 'login' =>:new
  	post 'login' =>:create
  	delete 'logout' =>:destroy
  end

  get 'admin/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :players
   root 'igrok#index'

  resources :users

  
  get '/about' => 'about#about'
  get '/contact' => 'contact#contacts'
  get '/statistics' => 'statistics#index'
 


end
