Rails.application.routes.draw do
  resources :grant_applications, only: :create

  namespace :admin do
    resources :grant_applications, only: :index
  end
end
