Rails.application.routes.draw do
  resources :records
  resources :penguins
  resources :colonies
  resources :scientists
  resources :login, only: [:new, :create]
  root to: 'application#welcome'
  get '/login', to: 'login#destroy', as: 'logout'
  get '/the-creation', to: 'application#creation', as: 'creation'
  post 'scientists/:id/records/new', to: 'scientists#create_record'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
