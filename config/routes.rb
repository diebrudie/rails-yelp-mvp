Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get 'restaurants/new', to: 'restaurants#new'
  root 'restaurants#index'
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'

  resources :restaurants, only: %i[new show create index] do
    resources :reviews, only: %i[index new create]
  end

  resources :reviews, only: [:destroy]
end
