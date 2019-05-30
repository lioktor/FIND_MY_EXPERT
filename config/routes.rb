Rails.application.routes.draw do

  root to: 'pages#home'
  # resources :users
  devise_for :users
  resources :expertises do
    resources :missions, only: [:create, :new]
  end
  resources :missions do
    collection do
      get 'mymission'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
