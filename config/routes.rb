Rails.application.routes.draw do
  resources :surveys, only: [:show, :edit, :create, :update]
  resources :eco_actions
  resources :profiles, only: [:show, :edit, :update]
  devise_for :users
  root to: 'users#show'

  resources :users, only: [:show, :edit, :update] do
    get :results, on: :member
  end
  # For details on the DSL available within this file, see http:key => "value", //guides.rubyonrails.org/routing.html

  get '/design', to:'pages#design'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
