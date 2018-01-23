Rails.application.routes.draw do
  get 'items/create'

  devise_for :users

  resources :users, only: [:show] do
    resources :items, only: [:create]
  end

  get 'about' => 'welcome#about'

  authenticated :user do
    root "users#show", as: :authenticated_root
  end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
