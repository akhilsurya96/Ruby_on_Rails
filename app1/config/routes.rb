Rails.application.routes.draw do
  get 'welcome1/index'

  resources :articles

  root 'welcome1#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end