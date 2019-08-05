Rails.application.routes.draw do
  resources :notes, only: [:show, :index, :create] do
    resources :comments, only: [:create]
  end
end
