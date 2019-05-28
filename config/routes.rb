Rails.application.routes.draw do
  devise_for :users
  get 'missions/index'
  get 'missions/new'
  get 'missions/create'
  get 'missions/edit'
  get 'missions/update'
  get 'missions/show'
  get 'missions/destroy'
  get 'expertises/index'
  get 'expertises/new'
  get 'expertises/create'
  get 'expertises/edit'
  get 'expertises/update'
  get 'expertises/show'
  get 'expertises/destroy'
  get 'users/index'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/show'
  get 'users/destroy'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
