Rails.application.routes.draw do
  root 'products#index'

  get 'competitor' => 'pages#competitor', as: 'competitor'

  get 'carts/:id' => 'carts#show', as: 'cart'
  delete 'carts/:id' => 'carts#destroy'

  post 'items/:id/add' => "items#add_quantity", as: "item_add"
  post 'items/:id/reduce' => "items#reduce_quantity", as: "item_reduce"
  post 'items' => 'items#create'
  get 'items/:id' => 'items#show', as: 'item'
  delete 'items/:id' => 'items#destroy', as: 'item_delete'

  get '/login' => 'session#new', :as => 'login'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy', :as => 'logout'

  resources :products, :orders, :charges, :users

end
