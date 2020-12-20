Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1, constraints: Constraints::ApiVersionConstraint.new(version: 'v1', default: true) do
      resources :projects do
        resources :tasks
      end
    end
  end

  post 'signup', to: 'signup#create'
  post 'signin', to: 'signin#create'
  post 'refresh', to: 'refresh#create'
end
