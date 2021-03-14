Rails.application.routes.draw do

  get 'customers/show'

  get 'customers/index'

  get 'customers/edit'

  devise_for :customers, controllers: {
    registrations: 'customers/registrations',
    sessions: 'customers/sessions'
  }
  get 'searches/search'

  get 'deliverys/index'

  get 'deliverys/edit'

  get 'deliverys/update'

  get 'deliverys/destroy'

  get 'genres/index'

  get 'genres/edit'

  get 'genres/update'

  get 'genres/destroy'

  get 'carts/index'

  get 'sweets/index'

  get 'sweets/show'

  get 'sweets/new'

  get 'sweets/edit'

  get 'order_details/index'

  get 'order_details/show'

  get 'orders/index'

  get 'orders/show'

  get 'orders/thanks'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
