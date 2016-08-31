Rails.application.routes.draw do
  
  resources :matches, :stats

  root 'welcome#index'
end
