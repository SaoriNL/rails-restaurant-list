Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get 'about', to: 'pages#about'
  resources :categories do
    resources :restaurants
  end
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
  resources :restaurants, only: :destroy
  resources :reviews, only: :destroy
end
