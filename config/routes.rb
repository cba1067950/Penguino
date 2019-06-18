Rails.application.routes.draw do
  resources :records
  resources :penguins
  resources :colonies
  resources :scientists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
