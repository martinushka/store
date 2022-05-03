Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  resources :products do
    get :who_bought, on: :member
  end
  root to: 'store#index', as: 'store_index'
  get 'store/index'
  # For details on the DSL available within this file, see
  # https://guides.rubyonrails.org/routing.html
end