Rails.application.routes.draw do
  resources :categories, only: [:index] do
    resources :organizations, only: [:index]
  end

  resources :organizations, only: [:index, :show] do
    resources :categories, only: [:index]
  end

  resources :orgs, only: [:index]
end
