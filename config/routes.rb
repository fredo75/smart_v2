Rails.application.routes.draw do
  resources :surveys, only: [:show, :edit, :create, :update]
  devise_for :users
  root to: 'pages#home'

  resources :members, only: [:show]
  # For details on the DSL available within this file, see http:key => "value", //guides.rubyonrails.org/routing.html
end
