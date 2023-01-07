Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :movie
  resources :list, only: %i[new create index show] do
    resources :bookmark, only: %i[new create]
  end
end
