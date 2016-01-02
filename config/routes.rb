Rails.application.routes.draw do
  get 'pages/home' => 'pages#home', as: :home
  get 'pages/about' => 'pages#about', as: :about

  get '/songs' => 'songs#index', as: :songs
  get '/songs/new' => 'songs#new', as: :new

  get '/songs/:id' => 'songs#song', as: :song
  patch '/songs/:id' => 'songs#update'
  delete '/songs/:id' => 'songs#destroy'

  post '/songs' => 'songs#create'

  get '/songs/:id/edit' => 'songs#edit', as: :edit_song
end
