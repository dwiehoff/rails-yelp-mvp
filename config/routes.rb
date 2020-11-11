Rails.application.routes.draw do
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[new create]
  end


  # # user stories
  # # list all
  # get 'restaurants', to: 'restaurants#index'
  # # add new
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # # show single
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # # add new review
  # get 'restaurants/:id/reviews/new', to: 'reviews#new', as: :reviews_new
  # post 'restaurants/:id/reviews', to: 'reviews#create'
end
