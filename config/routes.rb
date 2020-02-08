Rails.application.routes.draw do

  namespace :admin do
      resources :benefits
      resources :benefit_categories
      resources :benefits_plans
      resources :klaims
      resources :limits
      resources :pangkats
      resources :plans
      resources :rewards
      resources :statuses
      resources :users
      resources :users_plans

      root to: "benefits#index"
    end
  resources :klaims
  resources :statuses

  resources :rewards

  resources :limits
  resources :users_plans
  resources :benefits_plans
  resources :pangkats
  resources :benefits
  resources :benefit_categories
  resources :plans
  resources :users
  post '/login', to: 'users#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
