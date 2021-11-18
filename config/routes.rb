Rails.application.routes.draw do
  root to: 'lists#index'

  resources :lists, except: %i[edit update destroy] do
    resources :bookmarks, only: %i[ new create destroy], shallow: true

  end
end
