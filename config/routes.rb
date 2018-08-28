Rails.application.routes.draw do
  resources :surveys, only: [:show, :edit, :create, :update]
  resources :eco_actions
  devise_for :users
  root to: 'pages#home'



  resources :members, only: [:show]
  # For details on the DSL available within this file, see http:key => "value", //guides.rubyonrails.org/routing.html

  get '/design', to:'pages#design'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
