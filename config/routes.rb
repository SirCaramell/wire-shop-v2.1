Rails.application.routes.draw do
  get 'session/new'

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  get '/feed', to: 'static#feed'
  get '/api' => redirect('/swagger/dist/index.html?url=/api-docs.json')

  resources :workers
  resources :customers
  resources :create_carts_products
  resources :carts
  resources :products
  resources :orders
  root to: 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
