Rails.application.routes.draw do
  root 'pages#index'

  get 'carts/show'
  post 'items/:id/add' => "items#add_quantity", as: "item_add"
  post 'items/:id/reduce' => "items#reduce_quantity", as: "item_reduce"
  post 'items' => 'items#create'
  get 'items/:id' => 'items#show', as: 'item'
  delete 'items/:id' => 'items#destroy', as: 'item_delete'

  resources :products
end
