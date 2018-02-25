Rails.application.routes.draw do

  get "upload" => "images#index", as: "upload"

  get 'images/create'

  get 'images/destroy'

  get 'images/index'

  get 'categories/new'

  get 'categories/create'

  get 'categories/edit'

  get 'categories/update'

  get 'categories/show'

  get 'categories/destroy'

  resources :categories, :images

  root 'images#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
