Rails.application.routes.draw do

  resources :user_rewards
  resources :user_benefits
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
      resources :user_benefits
      resources :user_rewards

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
  resources :users do

  end
  post '/tuker_kredit', to: 'users#tuker_kredit'

  post '/login', to: 'users#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
