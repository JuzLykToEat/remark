Rails.application.routes.draw do
  resources :movies, only: [:index]
  get   '/movies_by_actor',   to: 'movies#movies_by_actor'
end
