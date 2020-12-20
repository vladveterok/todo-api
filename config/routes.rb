Rails.application.routes.draw do
  resources :projects do
    resources :tasks
  end

  post 'signup', to: 'signup#create'
  post 'signin', to: 'signin#create'
  post 'refresh', to: 'refresh#create'
end
