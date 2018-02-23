Rails.application.routes.draw do
  resources :blocks
  resources :events
  get 'comunidad' => 'pages#comunidad'

  devise_for :users
  root 'welcome#index'

  resources :contacts, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
