Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'welcome#home'
  get '/about', to: 'welcome#about'
  
  resources :concerts
  resources :reviews 
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
