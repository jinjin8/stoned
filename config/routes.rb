Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :rocks do
    get "page/:page", action: :index, on: :collection
    collection do
      get :by_name
   end
    resources :minerals do
      get "page/:page", action: :index, on: :collection
      collection do
        get :random
      end
    end
  end
end
