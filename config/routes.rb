Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers

  # get '/', to: 'home#index'

  # get '/', to: 'home#index'
  patch 'capture' => 'pokemons#capture', as: 'capture' # wtf is this line really # is the as thing the URI pattern, why do we need it? 


end
