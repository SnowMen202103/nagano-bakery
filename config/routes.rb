Rails.application.routes.draw do

  get 'carts/index'

  get 'sweets/index'

  get 'sweets/show'

  get 'sweets/new'

  get 'sweets/edit'

  get 'order_details/index'

  get 'order_details/show'

  get 'orders/index'

  get 'orders/show'

  get 'users/index'

  get 'users/show'

  get 'users/edit'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
