Rails.application.routes.draw do

  get 'index/home'
  root to: 'index#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
