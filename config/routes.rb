Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :flats

  get '/flats', to: 'flats#index'

  post '/flats', to: 'flats#create'

  get 'flats/new', to: 'flats#new', as: :new_flat

  get 'flats/:id/edit', to: 'flats#edit', as: :edit_flat

  get 'flats/:id', to: 'flats#show', as: :flat

  patch 'flats/:id', to: 'flats#update'

  put 'flats/:id', to: 'flats#update'

  delete 'flats/:id', to: 'flats#destroy', as: :delete
end
