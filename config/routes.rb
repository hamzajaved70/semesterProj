Rails.application.routes.draw do

  resources :passports

  resources :licenses

  resources :appointments

  resources :pappointments
  
  resources :lappointments
  
  resources :cnics

  get 'pages/home'

  get 'pages/help'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/services'

  devise_for :users

  devise_for :authors
  
  resources :cnics do
    put 'approve' => 'cnics#approve', on: :member
    put 'disapprove' => 'cnics#disapprove', on: :member
  end

  resources :licenses do
    put 'approve' => 'licenses#approve', on: :member
    put 'disapprove' => 'licenses#disapprove', on: :member
  end

  resources :passports do
    put 'approve' => 'passports#approve', on: :member
    put 'disapprove' => 'passports#disapprove', on: :member
  end

  namespace :authors do
    get '/account' => 'accounts#edit', as: :account
    put '/info' => 'accounts#update_info', as: :info
    put '/changepassword' => 'accounts#change_password', as: :change_password
    resources :posts do
      put 'publish' => 'posts#publish', on: :member
      put 'unpublish' => 'posts#unpublish', on: :member
    end
  end

  scope module: 'blog' do
    get 'about' => 'pages#about', as: :about
    get 'contact' => 'pages#contact', as: :contact  
    get 'posts' => 'posts#index', as: :posts
    get 'posts/:id' => 'posts#show', as: :post
  end
  
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#home"

end
