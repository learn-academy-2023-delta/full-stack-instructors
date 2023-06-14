Rails.application.routes.draw do
  get 'herbs' => 'herb#index', as: 'herbs'
  get 'herbs/new' => 'herb#new', as: 'new_herb'
  get 'herbs/:id' => 'herb#show', as: 'herb'
  post 'herbs' => 'herb#create'
  get 'herb/:id/edit' => 'herb#edit', as: 'edit_herb'
  patch 'herbs/:id' => 'herb#update'
  delete 'herb/:id' => 'herb#destroy', as: 'delete_herb'
  root 'herb#index'
end
