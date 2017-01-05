Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/new'

  get 'posts/create'

  get 'posts/edit'

  get 'posts/update'

  get 'posts/destroy'

  get 'cities/index'

  get 'cities/new'

  get 'cities/create'

  get 'cities/edit'

  get 'cities/update'

  get 'cities/destroy'

  devise_for :users
  get 'homes/index'
  root to: 'homes#index'

  resources :cities do
    resources :posts
  end
end
