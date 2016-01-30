Rails.application.routes.draw do
  root to: 'static_pages#root'
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:show, :index, :create]
    resources :loops, only: [:show, :index]
    resource :feed, only: [:show]
    resource :session, only: [:create, :destroy, :show]
  end

end
