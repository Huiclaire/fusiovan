Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'profiles#dashboard'
  get 'comparison', to: 'profiles#comparison'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :builds, only: [ :index, :show ]
end
