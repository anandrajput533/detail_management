Rails.application.routes.draw do
  root 'persons#index'
  resources :persons  do
    resources :person_details
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
