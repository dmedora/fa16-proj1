Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers

  # how does this resources thing work... 

  # get '/', to: 'home#index'
  
  # part 2: 
  patch 'capture' => 'pokemons#capture', as: 'capture' # wtf is this line really # is the as thing the URI pattern, why do we need it? 

  # part 4:
  patch 'damage' => 'pokemons#damage', as: 'damage' # is it not patch '/trainers',


  # part 5:

  # get '/pokemons/new', to: 'pokemons#new' 
  # post '/trainers/create', to: 'pokemons#create' # is this right is it trainers.. or just /trainers?

  get 'newpokemon' => 'pokemons#new', as: 'newpokemon' #pokemons#create? but that creates immediately when button is pressed... so route to new to go to the form instead. 

  post 'createpokemon' => 'pokemons#create', as: 'createpokemon'

end
