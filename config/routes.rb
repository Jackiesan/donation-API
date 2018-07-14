Rails.application.routes.draw do
  resources :categories, only: [:index] do
    resources :organizations, only: [:index]
  end
  resources :organizations, only: [:index, :show]
  resources :orgs, only: [:index]
end
