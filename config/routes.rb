Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :clubs do
  	resources :reviews
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'clubs#index'

  match 'users/:id' => 'users#show', via: :get


  get 'addimages', to: 'clubs#addimages'
  post 'upload_image', to: "clubs#upload_image"
  put 'delete_image', to: 'clubs#delete_image'
  get 'delete_image', to: 'clubs#delete_image'
  devise_scope :user do 
    get 'logout' => 'devise/sessions#destroy'
  end
  
end
