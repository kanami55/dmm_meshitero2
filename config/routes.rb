Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  resources :post_images, onry: [:new,:create, :index, :show, :destroy]
  resources :users, onry: [:show, :edit, :update]
  resources :post_comments, only: [:create,:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
