Rails.application.routes.draw do
  
  resources :matches

  root 'welcome#index'
end
