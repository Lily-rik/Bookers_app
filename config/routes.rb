Rails.application.routes.draw do
  resources :books

  get 'homes' => 'homes#index', as: 'homes'
  root to: 'homes#index'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
