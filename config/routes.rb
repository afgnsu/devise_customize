Rails.application.routes.draw do
  #get 'admins/index'
  #get 'admins/show'
  #devise_for :admins
  devise_for :admins, :controllers => { registrations: 'admins' }
  #resources :admins, only: [:index, :show, :edit, :update, :create]
  resources :admins, except: [:destroy]
  #match '/admins',   to: 'admins#index',   via: 'get'
  #match '/admins/:id',     to: 'admins#show',       via: 'get'
  #devise_for :admins, controllers: {
  #  sessions: 'admins/sessions'
  #}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'admins#index'
end
