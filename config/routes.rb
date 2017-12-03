Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :users
  resources :articles
  get 'static_pages/index'
  get 'static_pages/contact'
  get 'static_pages/about'
  get 'static_pages/blog'
  get 'tags/:tag', to: 'articles#index', as: :tag
  post 'static_pages/thank_you'
  root 'static_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
