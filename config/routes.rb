Rails.application.routes.draw do
  # resources :records
  resources :penguins
  resources :colonies
  # resources :scientists

  # get 'colonies/new', to: 'colonies#new'
  get '/welcome', to: 'application#welcome'
  get 'scientists/:id/profile', to: 'scientists#show'
  get 'scientists/:id/records', to: 'scientists#records', as: 'scientist_records'
  get 'record/:id', to: 'records#show', as: 'record'
  get 'scientists/:id/records/new', to: 'records#new', as: 'new_record'
  post 'scientists/:id/records/new', to: 'scientists#create_record'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
