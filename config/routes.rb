Rails.application.routes.draw do
  resources :restaurants do
    member do
      get :reviews
    end
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: :destroy
end
