BlDemo::Application.routes.draw do
  devise_for :users

  resources :bucketlists

  root :to => 'bucketlists#index'
end
