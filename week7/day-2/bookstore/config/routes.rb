Rails.application.routes.draw do
  root "books#index"

  resources :books do
    collection do
      get :search
    end
  end

  resources :sessions do
    collection do
      delete :destroy
    end
  end

  resources :authors
  # See the guides (URL)
end
