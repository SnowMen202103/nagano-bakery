Rails.application.routes.draw do


  devise_for :admins, skip: :all
  devise_scope :admin do
    get 'admins/sign_in' => 'admins/sessions#new', as: 'new_admin_session'
    post 'admins/sign_in' => 'admins/sessions#create', as: 'admin_session'
    delete 'admins/sign_out' => 'admins/sessions#destroy', as: 'destroy_admin_session'
  end
  namespace :admins do
    resources :customers, only:[:index, :show, :edit, :update]
    resources :order, only:[:index, :show, :update]
    resources :order_details, only:[:update]
    resources :items, only:[:index, :new, :create, :show, :edit, :update]
    resources :genres, only:[:index, :create, :edit, :update]
  end

  devise_for :customers, skip: :all
  devise_scope :customer do
    get 'customers/sign_in' => 'customer/sessions#new', as: 'new_customer_session'
    post 'customers/sign_in' => 'customer/sessions#create', as: 'customer_session'
    delete 'customers/sign_out' => 'customer/sessions#destroy', as: 'destroy_customer_session'
    get 'customers/sign_up' => 'customer/registrations#new', as: 'new_customer_registration'
    post 'customers' => 'customer/registrations#create', as: 'customer_registration'
    get 'customers/password/new' => 'customer/passwords#new', as: 'new_customer_password'
  end

  scope module: :customer do
    resource :customers, only: [:show, :edit, :update] do
      collection do
        get 'goodbye'
        patch 'out'
      end
    end
    resources :addresses, only: [:index, :create, :edit, :update, :destroy]
    resources :cart_items, only: [:index, :create, :update, :destroy,] do
      collection do
        delete 'destroy_all'
      end
    end
    resources :orders, only: [:new, :confirm, :index, :show, :create, :update]

    get 'homes/about'
    get 'customers/goodbye'
    get 'searches/search'
    get 'orders/thanks'
    resources :items, only: [:index, :show]
  end
  root 'customer/homes#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end