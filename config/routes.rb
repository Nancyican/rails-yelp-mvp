Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

  # resources :restaurants do
  #   resources :reviews, only: [:new, :create]
  # end
  # get 'restaurants', to: 'restaurants#index'
  # get '/restaurants/new', to: 'restaurants#new'

  # get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # post '/restaurants', to: 'restaurants#create'
end
