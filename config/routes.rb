Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'profiles#dashboard'
  get 'comparison', to: 'profiles#comparison'
  get 'styleguide', to: "pages#styleguide"
  resources :appliances, only: :index
  resources :components, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :builds, only: [ :index, :show, :new, :create ] do
    resources :bookmarks, only: [ :create ]
  end
end
