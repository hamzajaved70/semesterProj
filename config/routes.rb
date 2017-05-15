Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/help'

  get 'pages/about'

  get 'pages/contact'

  devise_for :users


  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#home"

end
