Rails.application.routes.draw do

  #Page routes
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  #Repair routes
  get 'repairs/new', as: 'new_repair'
  get 'repairs/:id', to: 'repairs#show', as: 'repair'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
