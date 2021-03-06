Rails.application.routes.draw do
  resources :platforms, only: %i[index show]
  resources :genres, only: %i[index show]
  resources :publishers, only: %i[index show]
  resources :video_game_titles, only: %i[index show]
  get '/about', to: 'about#index'
  get '/home', to: 'home#index'

  # placeholder
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
