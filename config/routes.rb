Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :covid_forms
  resources :covid_forms, path: '/', param: :id, only: %i[show]
  resources :dashboards,  only:[:show]
  get 'dashboards/show'
  get 'pages/not_here'
  get 'pages/team_records'
  resources :flags
  resources :log_dates

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
