Rails.application.routes.draw do
  get 'welcome/index'

  resources :artists do
    resources :songs
  end

  namespace :api do
    resources :artists do
      resources :songs
    end
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
