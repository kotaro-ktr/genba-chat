Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :rooms, only:[:new, :create, :destroy] do
    resources :charts, only: [:new, :create]
    resources :messages, only: [:index, :create]
  end
end
