Rails.application.routes.draw do

  root 'homes#top'
  get 'homes/about'

  devise_for :customers, controllers: {
    registrations: 'customers/registrations',
    sessions: 'customers/sessions'
  }
  
  resources :customers, only: [:index, :show, :edit, :update] do
    resources :addresses, only: [:index, :create, :edit, :update, :destroy]
  end
  get 'customers/goodbye'


  resources :cart_items, only: [:index, :update, :destroy]

  resources :items do
    resources :genres, only: [:index, :create, :edit, :update, :destroy]
  end

  resources :order_details, only: [:index, :show, :update]

  resources :orders, only: [:index, :show, :create, :update]
  get 'orders/thanks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'searches/search'
end
