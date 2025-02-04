Rails.application.routes.draw do
  resources :authors do
    resources :blogs
  end
  root "blogs#index"
end
