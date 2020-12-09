Rails.application.routes.draw do
  resources :albums
  resources :notes
  resources :artists
  root 'songs#index'
  resources :songs
  get 'albums', to: 'album#albums'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
