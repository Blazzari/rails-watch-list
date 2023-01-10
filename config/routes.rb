Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :movies
  resources :lists, only: %i[new create index show] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
end

# rails g controller movies index show new create edit update destroy
# rails g controller bookmarks new create destroy show
# rails g controller lists index show new create
