Rails.application.routes.draw do
  resources :grant_applications, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
