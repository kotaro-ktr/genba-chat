Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  resources :rooms, only:[:new, :create] do
    # resources :charts, only: [:new, :create]
    resources :messages, only: [:index, :create]
  end
  resources :users, only: :show
end
