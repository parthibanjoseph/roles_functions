Rails.application.routes.draw do
  root 'pages#home'

  resources :estimates
  resources :surfaces
  resources :external_organizations
  ##get 'external_organizations' => 'external_organizations#index', as: :external_organizations
  resources :sub_organizations
  resources :portfolios
  resources :roles
  resources :responsibilities
  resources :tasks
  resources :life_cycle_steps

  match ':controller(/:action(/:id))', :via => :get

end
