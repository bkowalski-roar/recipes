Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index, :show, :create], param: :slug do
        resources :stages, only: :show do
          resources :steps, only: :index
          resources :ingredients, only: :index
        end
      end
    end
  end
end
