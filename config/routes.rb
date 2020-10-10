Rails.application.routes.draw do
  resources :genres, only: %i[index]
  resources :publishers, only: %i[index show]
  resources :video_game_titles, only: %i[index show]
  get '/about', to: 'about#index'

  # placeholder
  root "publishers#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
