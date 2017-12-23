Rails.application.routes.draw do
  #
  # #Page routes
  # root 'pages#index'
  # get 'about', to: 'pages#about'
  # get 'contact', to: 'pages#contact'
  # get 'terms', to: 'pages#terms'
  #
  # #Repair routes
  # get 'repairs', to: 'repairs#index', as: 'repair_index'
  # get 'repair/new', to: 'repairs#new', as: 'new_repair'
  # get 'repair/:id', to: 'repairs#show', as: 'repair'
  # post 'repair', to: 'repairs#create', as: 'repairs'
  # get 'repair/:id/edit', to: 'repairs#edit', as: 'edit_repair'
  # patch 'repair/:id', to: 'repairs#update'
  # put 'repair/:id', to: 'repairs#update'
  # patch 'repair/:id/pick_up', to: 'repairs#pick_up', as: 'pick_up_repair'
  # patch 'repair/:id/fix', to: 'repairs#fix', as: 'fix_repair'
  # patch 'repair/:id/deliver', to: 'repairs#deliver', as: 'deliver_repair'
  # patch 'repair/:id/cancel', to: 'repairs#cancel', as: 'cancel_repair'
  #
  #
  # #Device routes
  # get 'devices', to: 'devices#index', as: 'device_index'
  # get 'device/:id', to: 'devices#show', as: 'device'
  # get 'device/:id/edit', to: 'devices#edit', as: 'edit_device'
  # patch 'device/:id', to: 'devices#update'
  # put 'device/:id', to: 'devices#update'
  # get 'device/:id/fix', to: 'devices#fix', as: 'fix_device'
  #
  # #Address routes
  # get 'addresses', to: 'addresses#index', as: 'address_index'
  # get 'address/:id', to: 'addresses#show', as: 'address'
  # get 'address/:id/edit', to: 'addresses#edit', as: 'edit_address'
  # patch 'address/:id', to: 'addresses#update'
  # put 'address/:id', to: 'addresses#update'
  #
  # #User routes
  # get '/dashboard', to: 'users#dashboard', as: 'user_root'
  # devise_for :users

  #Admin routes
  get '/adash', to: 'admins#dashboard', as: 'admin_root'
  devise_for :admins

  #reps
  resources :reps, only: [:index, :show, :new, :create]

  #Maintenance Page
  root 'pages#maint'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
