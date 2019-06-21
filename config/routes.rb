Rails.application.routes.draw do
  resources :records
  resources :penguins
  resources :colonies
  resources :scientists
  resources :login, only: [:new, :create]
  root to: 'application#welcome'
  get '/login', to: 'login#destroy', as: 'logout'





  # get 'colonies/new', to: 'colonies#new'
  # get 'scientists/:id/profile', to: 'scientists#show'
  # get 'scientists/:id/profile', to: 'scientists#edit'

  # post 'scientists/:id/profile', to: 'scientists#destroy


  # get 'scientists/:id/records/new', to: 'records#new', as: 'new_record'
  # delete 'records/:id', to: 'records#destroy'
  post 'scientists/:id/records/new', to: 'scientists#create_record'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
