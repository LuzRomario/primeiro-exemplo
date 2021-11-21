Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :mining_types
  resources :coins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
