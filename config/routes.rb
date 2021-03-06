Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :directions
  resources :ingredients
  resources :recipes

  
  root 'recipes#welcome'
  get 'user_profile' => 'recipes#user_profile'
  get 'show_recipe' => 'recipes#show_recipe'
  get 'home' => 'recipes#home'
  get '/search' => 'recipes#search', :as => 'search_recipe'
 
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
