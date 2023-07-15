Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')

  # config/routes.rb
  resources :movies do
    member do
      get 'same_director'
    end
  end

  # get 'movies/:id/same_director', to: 'movies#same_director_movies', as: 'same_director'
  get 'movies/:id/similar', to: 'movies#similar', as: 'similar_movies'
end

