Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :photos, only: [ :index, :show, :edit, :destroy] do
    resources :phototags, only: [ :new, :create, :destroy ]
  end
  resources :tags, only: [ :index ]
end
