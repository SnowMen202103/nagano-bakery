Rails.application.routes.draw do
  get 'searches/search'

  get 'order_details/index'

  get 'order_details/show'

  get 'deliverys/index'

  get 'deliverys/edit'

  get 'deliverys/update'

  get 'deliverys/destroy'

  get 'genres/index'

  get 'genres/edit'

  get 'genres/update'

  get 'genres/destroy'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
