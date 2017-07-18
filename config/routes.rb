Rails.application.routes.draw do

  resources :teams 
  #get 'teams/new'
  #get "teams" => "teams#index" #mostrar todos
  #post "teams" => "teams#create" #crear
  #get "teams/:id" => "teams#show" #mostrar el reciente
  root to: 'teams#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
