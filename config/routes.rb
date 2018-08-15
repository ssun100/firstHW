Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  post 'home/create/:user_id' => 'home#create'


  root 'home#index'

  devise_for :users, controllers: {

      registrations: 'user/registrations'
  }

 #devise_for :users, controllers: { registrations: 'users/registrations' }
end
