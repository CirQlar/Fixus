Rails.application.routes.draw do

  get 'admins/dashboard'

  #Page routes
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  #Repair routes
  get 'repairs', to: 'repairs#index', as: 'repair_index'
  get 'repair/new', to: 'repairs#new', as: 'new_repair'
  get 'repair/:id', to: 'repairs#show', as: 'repair'
  post 'repair', to: 'repairs#create', as: 'repairs'
  get 'repair/:id/edit', to: 'repairs#edit', as: 'edit_repair'
  patch 'repair/:id', to: 'repairs#update'
  put 'repair/:id', to: 'repairs#update'

  #Device routes
  get 'devices', to: 'devices#index', as: 'device_index'
  get 'device/:id', to: 'devices#show', as: 'device'
  get 'device/:id/edit', to: 'devices#edit', as: 'edit_device'
  patch 'device/:id', to: 'devices#update'
  put 'device/:id', to: 'devices#update'

  #Address routes
  get 'addresses', to: 'addresses#index', as: 'address_index'
  get 'address/:id', to: 'addresses#show', as: 'address'
  get 'address/:id/edit', to: 'addresses#edit', as: 'edit_address'
  patch 'address/:id', to: 'addresses#update'
  put 'address/:id', to: 'addresses#update'

  #User routes
  get '/dashboard', to: 'users#dashboard', as: 'user_root'
  devise_for :users

  #Admin routes
  get '/adash', to: 'admins#dashboard', as: 'admin_root'
  devise_for :admins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
