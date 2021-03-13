Rails.application.routes.draw do
  get 'carts/index'

  get 'sweets/index'

  get 'sweets/show'

  get 'sweets/new'

  get 'sweets/edit'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
