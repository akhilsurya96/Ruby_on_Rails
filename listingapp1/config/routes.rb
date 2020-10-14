Rails.application.routes.draw do
  resources :authors do
    collection do
      get :publish
    end
  end
  resources :post2s
  
end
