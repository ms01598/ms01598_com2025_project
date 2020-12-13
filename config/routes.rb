Rails.application.routes.draw do
  resources :notes
  resources :albums
  resources :artists
  resources :songs
  root 'home#home'
  get 'songs', to: 'song#songs'
  get 'albums', to: 'album#albums'
  get 'notes', to: 'note#notes'
  get 'artists', to: 'artist#artists'

  get 'get_in_contact', to: 'home#contact'
  post 'request_get_in_contact', to: 'home#request_get_in_contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
