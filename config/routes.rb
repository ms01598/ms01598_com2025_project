Rails.application.routes.draw do
  resources :notes
  resources :albums
  resources :artists
  resources :songs
  root 'songs#index'
  get 'albums', to: 'album#albums'
  get 'notes', to: 'note#notes'
  get 'artists', to: 'artist#artists'

  get 'get_in_contact', to: 'contact#contact'
  post 'request_get_in_contact', to: 'contact#request_get_in_contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
