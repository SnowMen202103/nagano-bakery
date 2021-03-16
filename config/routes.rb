Rails.application.routes.draw do


  devise_for :admins, skip: :all
  devise_scope :admin do
    get 'admins/sign_in' => 'admins/sessions#new', as: 'new_admin_session'
    post 'admins/sign_in' => 'admins/sessions#create', as: 'admin_session'
    delete 'admins/sign_out' => 'admins/sessions#destroy', as: 'destroy_admin_session'    
  end

  devise_for :customers, skip: :all
  devise_scope :customer do
    get 'customers/sign_in' => 'customers/sessions#new', as: 'new_customer_session'
    post 'customers/sign_in' => 'customers/sessions#create', as: 'customer_session'
    delete 'customers/sign_out' => 'customers/sessions#destroy', as: 'destroy_customer_session'
    get 'customers/sign_up' => 'customers/registrations#new', as: 'new_customer_registration'
    post 'customers' => 'customers/registrations#create', as: 'customer_registration'
    get 'customers/password/new' => 'customers/passwords#new', as: 'new_customer_password'
  end
  
  scope module: :customers do
    resources :customers, only: [:index, :show, :edit, :update] do
      resources :addresses, only: [:index, :create, :edit, :update, :destroy]
      resources :order_details, only: [:index, :show, :update]
      resources :cart_items, only: [:index, :update, :destroy]
      resources :orders, only: [:index, :show, :create, :update]
    end
    get 'homes/about'
    get 'customers/goodbye'
    get 'searches/search'
    get 'orders/thanks'
    resources :items, only: [:index, :show]
  end
  root 'customers/homes#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
