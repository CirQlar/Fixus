Rails.application.routes.draw do

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



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
